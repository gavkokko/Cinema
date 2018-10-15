import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "ControllerServlet")
public class ControllerServlet extends HttpServlet {

    Connection con = null;
    ResultSet rs = null;

    String db_url = "jdbc:mysql://localhost:3306/cinema?useUnicode=yes&characterEncoding=UTF-8";
    String user = "root";
    String passwd = "password";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        //Αν επιλεχθεί το κουμπί movies
        if (request.getParameter("movies") != null) {
            try {
                con = DriverManager.getConnection(db_url, user, passwd);
                Statement statement = con.createStatement();
                rs = statement.executeQuery("SELECT title,image,overview,info,directors,stars from movies");
                ArrayList<Movies> movies = new ArrayList<>();

                while (rs.next()) {
                    String title = rs.getString("title");
                    String image = rs.getString("image");
                    String overview = rs.getString("overview");
                    String info = rs.getString("info");
                    String directors = rs.getString("directors");
                    String stars = rs.getString("stars");
                    Movies mvtemp = new Movies(title, image, overview, info, directors, stars);
                    movies.add(mvtemp);
                }
                request.setAttribute("data", movies);
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/allmovies.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (request.getParameter("bookButton") != null) {
            request.setAttribute("passvar", "Η κράτηση επιβεβαιώθηκε");
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/confirm.jsp");
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {

    }
}
