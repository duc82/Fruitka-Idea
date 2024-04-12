package com.example.fruitka.utils;

import com.example.fruitka.entity.Category;
import com.example.fruitka.entity.Product;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class ProductUtils {
    public static List<Product> getAll(Connection conn, int productCategoryId) throws SQLException {
        String sql = "SELECT * FROM Products";
        if (productCategoryId > 0) {
            sql += " WHERE product_category_id = ?";
        }
        PreparedStatement pstm = conn.prepareStatement(sql);
        if (productCategoryId > 0) {
            pstm.setInt(1, productCategoryId);
        }
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<>();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            String slug = rs.getString("slug");
            int price = rs.getInt("price");
            int salePrice = rs.getInt("sale_price");
            int quantity = rs.getInt("quantity");
            String description = rs.getString("description");
            String image = rs.getString("image");
            Category category = ProductCategoryUtils.getById(conn, rs.getInt("product_category_id"));
            Date createdAt = rs.getDate("created_at");
            Product product = new Product(id, name, slug, price, salePrice, quantity, description, image, category,
                    createdAt);
            list.add(product);
        }

        return list;
    }

    public static List<Product> getRelatedProducts(Connection conn,int id) throws SQLException {
        String sql = "SELECT * FROM Products WHERE NOT id = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1,id);
        ResultSet rs = pstm.executeQuery();
        List<Product> list = new ArrayList<>();
        while(rs.next()) {
            int productId = rs.getInt("id");
            String name = rs.getString("name");
            String slug = rs.getString("slug");
            int price = rs.getInt("price");
            int salePrice = rs.getInt("sale_price");
            int quantity = rs.getInt("quantity");
            String description = rs.getString("description");
            String image = rs.getString("image");
            Category category = ProductCategoryUtils.getById(conn, rs.getInt("product_category_id"));
            Date createdAt = rs.getDate("created_at");
            Product product = new Product(productId, name, slug, price, salePrice, quantity, description, image, category, createdAt);
            list.add(product);
        }

        return list;
    }


    public static Product getById(Connection conn,int id) throws SQLException {
        String sql = "SELECT * FROM Products WHERE id = ?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1, id);
        ResultSet rs = pstm.executeQuery();
        if (rs.next()) {
            String name = rs.getString("name");
            String slug = rs.getString("slug");
            int price = rs.getInt("price");
            int salePrice = rs.getInt("sale_price");
            int quantity = rs.getInt("quantity");
            String description = rs.getString("description");
            String image = rs.getString("image");
            Category category = ProductCategoryUtils.getById(conn, rs.getInt("product_category_id"));
            Date createdAt = rs.getDate("created_at");
            return new Product(id, name, slug, price, salePrice, quantity, description, image, category, createdAt);
        }

        return null;
    }
}
