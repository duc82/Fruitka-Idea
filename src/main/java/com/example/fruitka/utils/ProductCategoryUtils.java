package com.example.fruitka.utils;


import com.example.fruitka.entity.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductCategoryUtils {
    public static List<Category> getAll(Connection conn) throws SQLException {
        String sql = "SELECT * FROM ProductCategory";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<Category> list = new ArrayList<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            Category category = new Category(id, name);
            list.add(category);
        }

        return list;
    }

    public static Category getById(Connection conn, int id) throws SQLException {
        String sql = "SELECT * FROM ProductCategory WHERE id = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1, id);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            String name = rs.getString("name");
            return new Category(id, name);
        }
        return null;
    }

}
