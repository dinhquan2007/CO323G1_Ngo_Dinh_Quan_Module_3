package com.example.product_discount_calculator;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DiscountServlet", value = "/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productDescription = request.getParameter("Product Description");
        float listPrice = Float.parseFloat(request.getParameter("List Price"));
        float discountPercent = Float.parseFloat(request.getParameter("Discount Percent"));
        double discountAmount = listPrice * discountPercent * 0.01;
        double discountPrice = listPrice - discountAmount;
//        PrintWriter writer=response.getWriter();
//        writer.println("<html>");
//        writer.println("<h2>"+"Discount Amount :" +discountAmount+"</h2>");
//        writer.println("<h2>"+"Discount Price :" +discountPrice+"</h2>");
//        writer.println("</html>");
        request.setAttribute("productDescription", productDescription);
        request.setAttribute("listPrice", listPrice);
        request.setAttribute("discountPercent", discountPercent);
        request.setAttribute("discountAmount", discountAmount);
        request.setAttribute("discountPrice", discountPrice);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        requestDispatcher.forward(request, response);
    }
}
