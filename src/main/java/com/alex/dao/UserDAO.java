package com.alex.dao;

import com.alex.model.User;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

@Component
public class UserDAO {
    private static Connection conn;
    static {
        String url = null;
        String username = null;
        String password = null;
        //load db properties
        try(InputStream in = UserDAO.class.getClassLoader()
                .getResourceAsStream("persistence.properties")){
            Properties properties = new Properties();
            properties.load(in);
            url = properties.getProperty("url");
            username = properties.getProperty("username");
            password = properties.getProperty("password");

        }
        catch (IOException e){
            e.printStackTrace();
        }
        try {

            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,username,password);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public List<User> getAll() throws SQLException {
        List<User> users = new ArrayList<>();
        PreparedStatement ps = conn.prepareStatement("select * from users");

        ResultSet rs = ps.executeQuery();
        while (rs.next()){
            User user = new User(rs.getString(1), rs.getString(2), rs.getString(3));
            users.add(user);
        }
        return users;
    }
}
