package beans;


import java.util.ArrayList;
import java.util.Calendar;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Jorge
 */
public class Function {
    
    private int movieId;
    private Calendar date;
    private Calendar hour;
    private int colums;
    private int rows;
    private ArrayList<Integer> seats = new ArrayList<>();

    public Function() {
    }

    public Function(int movieId, Calendar date, Calendar hour, int colums, int rows) {
        this.movieId = movieId;
        this.date = date;
        this.hour = hour;
        this.colums = colums;
        this.rows = rows;
    }

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }

    public Calendar getDate() {
        return date;
    }

    public void setDate(Calendar date) {
        this.date = date;
    }

    public Calendar getHour() {
        return hour;
    }

    public void setHour(Calendar hour) {
        this.hour = hour;
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

    @Override
    public String toString() {
        return "Funtion\n" + "movieId=" + movieId + ", date=" + date + ", hour=" + hour + ", cantSeats=" + colums + '}';
    }
    
    
}
