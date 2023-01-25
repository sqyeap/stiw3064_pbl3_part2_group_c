package com.example.demo2;

public class uumol {

    public uumol() {
    
    }
    
    private String status1 = "No Attempt";
    private String status2 = "Submitted for grading";
    private String grading = "No graded";
    private String time = "5 days 6 hours";
    private String modified1 = "-";
    private String modified2 = "Tuesday, 5 January 2023, 1:50 AM";
    private String comments = " Comments (0)";
    private String setduedate = "Tuesday, 10 January 2023, 8:25 AM";

    public String getStatus1() {
        return status1;
    }

    public String getStatus2() {
        return status2;
    }

    public String getModified1() {
        return modified1;
    }

    public String getModified2() {
        return modified2;
    }

    public void setStatus1(String status1) {
        this.status1 = status1;
    }

    public void setStatus2(String status2) {
        this.status2 = status2;
    }

    public void setModified1(String modified1) {
        this.modified1 = modified1;
    }

    public void setModified2(String modified2) {
        this.modified2 = modified2;
    }

    public void setGrading(String grading) {
        this.grading = grading;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    public void setSetduedate(String setduedate) {
        this.setduedate = setduedate;
    }

    public String getGrading() {
        return grading;
    }

    public String getTime() {
        return time;
    }

    public String getComments() {
        return comments;
    }

    public String getSetduedate() {
        return setduedate;
    }

    public static void main(String[] args) {
//        uumol setData = new uumol();
//        Date date = new Date();
//        setData.setModified(date);
//        System.out.printf("%1$s %2$tB %2$td, %2$tY, %2$tT", "Due date:", date);
//        System.out.println("\n");
//        System.out.println(setData.getStatus());
//        System.out.println(setData.getTime());
//        System.out.printf("%1$s %2$tB %2$td, %2$tY, %2$tT", "Due date:", setData.getSetduedate());
    }
    
}
