import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.sql.*;
import java.util.ArrayList;

@WebListener()
public class Listener implements ServletContextListener,
        HttpSessionListener, HttpSessionAttributeListener {

    public Listener() {
    }
    String db_url = "jdbc:mysql://localhost:3306/cinema?useUnicode=yes&characterEncoding=UTF-8";
    String user = "root";
    String passwd = "password";
    Connection con = null;

    public void contextInitialized(ServletContextEvent sce) {

        try {
            Document document = Jsoup.connect("https://www.imdb.com/movies-in-theaters/").timeout(10000).get();

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(db_url,user,passwd);
            Elements titles = document.getElementsByTag("h4").select("a");
            Elements images = document.getElementsByAttributeValueMatching("height","209");
            Elements outline = document.getElementsByClass("outline");
            Elements info = document.getElementsByClass("cert-runtime-genre");
            Elements diractors = document.getElementsByClass("txt-block");
            ArrayList<String> directors = new ArrayList<>();
            ArrayList<String> stars = new ArrayList<>();
            for (Element t : diractors) {
                if(t.text().startsWith("Director")){
                    directors.add(t.text());
                }
                if(t.text().startsWith("Stars")){
                    stars.add(t.text());
                }
            }
            String insertTableSQL = "INSERT INTO movies(title, image, overview, info, directors, stars) VALUES (?,?,?,?,?,?)";
            for(int i=0; i<titles.size();i++){
                try (PreparedStatement pst = con.prepareStatement(insertTableSQL, PreparedStatement.RETURN_GENERATED_KEYS)) {
                    pst.setString(1, titles.get(i).text());
                    pst.setString(2, String.valueOf(images.get(i)));
                    pst.setString(3, outline.get(i).text());
                    pst.setString(4, info.get(i).text());
                    pst.setString(5, directors.get(i));
                    pst.setString(6, stars.get(i));
                    pst.executeUpdate();
                }
            }

        } catch (IOException | ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public void contextDestroyed(ServletContextEvent sce) {
        try {
            Statement trunc = con.createStatement();
            trunc.executeUpdate("truncate table  movies");
            System.out.println("0 tuples");
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    // -------------------------------------------------------
    // HttpSessionListener implementation
    // -------------------------------------------------------
    public void sessionCreated(HttpSessionEvent se) {
        /* Session is created. */
    }

    public void sessionDestroyed(HttpSessionEvent se) {
        /* Session is destroyed. */
    }
}
