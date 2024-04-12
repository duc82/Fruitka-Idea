package com.example.fruitka.utils;

import com.example.fruitka.entity.Cart;
import com.example.fruitka.entity.CartItem;
import com.example.fruitka.entity.User;
import com.example.fruitka.enums.Role;

import java.sql.*;
import java.util.List;

public class CartUtils {
    public static Cart findOneOrCreate(Connection conn, int userId) throws SQLException {
        String sql = "EXEC SelectCart @UserId = ?";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setInt(1, userId);
        ResultSet rs = ps.executeQuery();

        if (rs.next()) {
            int id = rs.getInt("id");

            int user_id = rs.getInt("user_id");
            String user_name = rs.getString("user_name");
            String user_email = rs.getString("user_email");
            String user_phone = rs.getString("user_phone");
            String user_role = rs.getString("user_role");
            Date user_created_at = rs.getDate("user_created_at");
            Role role = Role.getRole(user_role);

            User user = new User(user_id, user_name, user_email, null, user_phone, role, user_created_at);

            List<CartItem> items = CartItemUtils.getAll(conn, id);
            int subTotal = rs.getInt("sub_total");
            Date created_at = rs.getDate("created_at");

            return new Cart(id, user, items, subTotal, created_at);
        }

        String sqlInsert = "INSERT INTO Carts (user_id) VALUES (?)";
        PreparedStatement psInsert = conn.prepareStatement(sqlInsert, Statement.RETURN_GENERATED_KEYS);
        psInsert.setInt(1, userId);
        psInsert.executeUpdate();

        ResultSet rsInsert = psInsert.getGeneratedKeys();
        rsInsert.next();
        int id = rsInsert.getInt(1);
        User user = UserUtils.getUserById(conn, userId);

        List<CartItem> items = CartItemUtils.getAll(conn, id);

        return new Cart(id, user, items, 0, new Date(System.currentTimeMillis()));
    }

    public static Cart addProductToCart(Connection conn, int userId, int productId, int quantity) throws SQLException {
        Cart cart = findOneOrCreate(conn, userId);
        CartItem item = CartItemUtils.findOneOrCreate(conn, cart.getId(), productId);
        item.setQuantity(item.getQuantity() + quantity);
        CartItemUtils.update(conn, item);
        return findOneOrCreate(conn, userId);
    }

    public static int getSubTotal(Connection conn, int userId) throws SQLException {
        Cart cart = findOneOrCreate(conn, userId);
        return cart.getSubTotal();
    }

    public static void clearCart(Connection conn, int userId) throws SQLException {
        Cart cart = findOneOrCreate(conn, userId);
        List<CartItem> items = cart.getCartItems();
        for (CartItem item : items) {
            CartItemUtils.delete(conn, item.getId());
        }
    }
}
