package beans;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TreeMap;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Jorge
 */
public class Function implements Serializable {

    private int movieId;
    private Calendar dateHour;
    private int colums;
    private int rows;
    private TreeMap<String, Integer> seats = new TreeMap<>();

    public Function() {
    }

    public Function(int movieId, Calendar date, int colums, int rows, TreeMap<String, Integer> seats) {
        this.movieId = movieId;
        this.dateHour = date;
        this.colums = colums;
        this.rows = rows;
        this.seats = seats;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public int getCantSeats() {
        return colums;
    }

    public void setCantSeats(int cantSeats) {
        this.colums = cantSeats;
    }

    public int getColums() {
        return colums;
    }

    public void setColums(int colums) {
        this.colums = colums;
    }

    public int getRows() {
        return rows;
    }

    public void setRows(int rows) {
        this.rows = rows;
    }

    public String getDateHour() {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy - hh:mm");
        return dateFormat.format(dateHour.getTime());
    }

    public void setDateHour(Calendar dateHour) {
        this.dateHour = dateHour;
    }

    public TreeMap<String, Integer> getSeats() {
        return seats;
    }

    public void setSeats(TreeMap<String, Integer> seats) {
        this.seats = seats;
    }

    @Override
    public String toString() {
        return "Funtion\n" + "movieId=" + movieId + ", date=" + dateHour + ", cantSeats=" + colums * rows;
    }

}
