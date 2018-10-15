public class Movies {

    private String title;
    private String image;
    private String overview;
    private String info;
    private String directors;
    private String stars;

    public Movies(String title, String image, String overview, String info, String directors, String stars) {
        setTitle(title);
        setImage(image);
        setOverview(overview);
        setInfo(info);
        setDirectors(directors);
        setStars(stars);
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getOverview() {
        return overview;
    }

    public void setOverview(String overview) {
        this.overview = overview;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getDirectors() {
        return directors;
    }

    public void setDirectors(String directors) {
        this.directors = directors;
    }

    public String getStars() {
        return stars;
    }

    public void setStars(String stars) {
        this.stars = stars;
    }
}
