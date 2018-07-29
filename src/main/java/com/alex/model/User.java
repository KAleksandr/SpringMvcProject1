package com.alex.model;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

public class User {
    @NotBlank(message = "Name is required")
    private String name;

    @NotBlank(message = "Surname is required")
    @Size(min = 1, max = 15, message = "Surname should be from 1 to 15 symbols")
    private String surname;

    @NotBlank(message = "Email is required")
    @Email
    private String email;

    public User() {
    }

    public User(String name, String surname, String email) {
        this.name = name;
        this.surname = surname;
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public String getSurname() {
        return surname;
    }

    public String getEmail() {
        return email;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
