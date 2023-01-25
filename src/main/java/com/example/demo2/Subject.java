package com.example.demo2;

public class Subject {
    
    String subjectCode;
    int dueTimeDay;
    int dueTimeHour;
    boolean status;

    public String getSubjectCode() {
        return subjectCode;
    }

    public void setSubjectCode(String subjectCode) {
        this.subjectCode = subjectCode;
    }

    public int getDueTimeDay() {
        return dueTimeDay;
    }

    public void setDueTimeDay(int dueTimeDay) {
        this.dueTimeDay = dueTimeDay;
    }

    public int getDueTimeHour() {
        return dueTimeHour;
    }

    public void setdueTimeHour(int dueTimeHour) {
        this.dueTimeHour = dueTimeHour ;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
}
