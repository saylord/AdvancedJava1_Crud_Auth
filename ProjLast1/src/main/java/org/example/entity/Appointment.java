package org.example.entity;

import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "appointments")
public class Appointment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date app_date;
    private String app_time;
    @Transient
    @ManyToMany(mappedBy = "appointments")
    private Set<User> users;

    public Appointment(){};

    public Appointment(Date app_date, String app_time) {
        this.app_date = app_date;
        this.app_time = app_time;
    }

    public Appointment(Date app_date, String app_time, Set<User> users) {
        this.app_date = app_date;
        this.app_time = app_time;
        this.users = users;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getApp_date() {
        return app_date;
    }

    public void setApp_date(Date app_date) {
        this.app_date = app_date;
    }

    public String getApp_time() {
        return app_time;
    }

    public void setApp_time(String app_time) {
        this.app_time = app_time;
    }

    public Set<User> getUsers() {
        return users;
    }

    public void setUsers(Set<User> users) {
        this.users = users;
    }
}
