package com.example.fruitka.servlet;

import com.example.fruitka.conn.DbConnection;
import com.example.fruitka.entity.Category;
import com.example.fruitka.entity.Product;
import com.example.fruitka.utils.ProductCategoryUtils;
import com.example.fruitka.utils.ProductUtils;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.Connection;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "shop", value = "/shop")
public class ShopServlet extends HttpServlet {
    private static final Logger logger = Logger.getLogger(ShopServlet.class.getName());
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int categoryId = Integer
                    .parseInt(request.getParameter("categoryId") != null ? request.getParameter("categoryId") : "0");
            Connection conn = DbConnection.getMSSQLConnection();
            List<Category> categories = ProductCategoryUtils.getAll(conn);
            List<Product> products = ProductUtils.getAll(conn,categoryId);

            request.setAttribute("categories", categories);
            request.setAttribute("products", products);

            conn.close();

        } catch (Exception e) {
            logger.log(Level.SEVERE, e.getMessage());
            request.setAttribute("error", e.getMessage());
        }
        request.getRequestDispatcher("/shop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
