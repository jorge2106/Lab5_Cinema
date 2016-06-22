package beans;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Jorge
 */
public class Movie {
    
    private int id;
    private String name;
    private String sinopsis;
    private String urlImage;
    private String urlVideo;

    public Movie() {
    }

    public Movie(int id, String name, String sinopsis, String urlImage, String urlVideo) {
        this.id = id;
        this.name = name;
        this.sinopsis = sinopsis;
        this.urlImage = urlImage;
        this.urlVideo = urlVideo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public String getUrlVideo() {
        return urlVideo;
    }

    public void setUrlVideo(String urlVideo) {
        this.urlVideo = urlVideo;
    }

    @Override
    public String toString() {
        return "Movie{" + "id=" + id + ", name=" + name + ", sinopsis=" + sinopsis + ", urlImage=" + urlImage + ", urlVideo=" + urlVideo + '}';
    }
    
    
    
    
}
