package com.example.fruitka.utils;


import com.example.fruitka.entity.User;
import com.example.fruitka.enums.Role;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserUtils {
    public static User getUserById(Connection conn,int id) throws SQLException {
        String sql = "SELECT * FROM Users WHERE id = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1, id);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
            user.setPhone(rs.getString("phone"));
            user.setPassword(rs.getString("password"));
            user.setRole(Role.getRole(rs.getString("role")));
            user.setCreatedAt(rs.getDate("created_at"));
            return user;
        }
        return null;
    }

    public static User getUserByEmail(Connection conn, String email) throws SQLException {
        String sql = "SELECT * FROM Users WHERE email = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, email);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setName(rs.getString("name"));
            user.setEmail(rs.getString("email"));
            user.setPhone(rs.getString("phone"));
            user.setPassword(rs.getString("password"));
            user.setRole(Role.getRole(rs.getString("role")));
            user.setCreatedAt(rs.getDate("created_at"));
            return user;
        }
        return null;
    }
}
