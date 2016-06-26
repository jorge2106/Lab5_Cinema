package beans;

import java.io.Serializable;
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
public class Function implements Serializable {

    private int movieId;
    private Calendar dateHour;
    private int colums;
    private int rows;
    private ArrayList<Integer> seats = new ArrayList<>();

    public Function() {
    }

    public Function(int movieId, Calendar date, int colums, int rows) {
        this.movieId = movieId;
        this.dateHour = date;
        this.colums = colums;
        this.rows = rows;
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

    public Calendar getDateHour() {
        return dateHour;
    }

    public void setDateHour(Calendar dateHour) {
        this.dateHour = dateHour;
    }

    public ArrayList<Integer> getSeats() {
        return seats;
    }

    public void setSeats(ArrayList<Integer> seats) {
        this.seats = seats;
    }

    @Override
    public String toString() {
        return "Funtion\n" + "movieId=" + movieId + ", date=" + dateHour + ", cantSeats=" + colums * rows;
    }

}
