package com.example.ss10;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/CustomerServlet")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> list=new ArrayList<>();
        list.add(new Customer("1","Quân","1999","Nghệ An","https://1.bp.blogspot.com/-jk04EOWPAOs/YM9Ppqm0TMI/AAAAAAAAAPU/zYkPquSWCWEkoEyG0wL3DeaNfpcENnWHgCLcBGAsYHQ/s0/Anh-anh-dep-trai-Taihinhanh-Vn%2B%25283%2529.jpg"));
        list.add(new Customer("2","cường","1997","Nghệ An","https://1.bp.blogspot.com/-R82TzLwBHq4/YM9PmZ2e1nI/AAAAAAAAAOo/Z5b2lD8XooAzwh3poDI8U64nu3JkO0H3QCLcBGAsYHQ/s0/Anh-anh-dep-trai-Taihinhanh-Vn%2B%25282%2529.jpg"));
        list.add(new Customer("3","Duy","1989","Quảng Nam","https://1.bp.blogspot.com/-WHUtKRQ9azs/YM9Pjt_R_0I/AAAAAAAAAN8/3YKA7dL4hkYPOZWkNjD2GwQzFbGc_IVcQCLcBGAsYHQ/s0/Anh-anh-dep-trai-Taihinhanh-Vn%2B%25281%2529.jpg"));
        list.add(new Customer("4","Thành","2003","Hà Nội","https://1.bp.blogspot.com/-Ws4rA6XAsn4/YM9PrrKSPSI/AAAAAAAAAPw/npjodMzNRJc_hMD1RysjwhQ4R8rO-geBQCLcBGAsYHQ/s0/Anh-anh-dep-trai-Taihinhanh-Vn%2B%25284%2529.jpg"));
        list.add(new Customer("5","Pháp","1999","Quảng Nam","https://1.bp.blogspot.com/-xsKclKi4Ex0/YM9Pr3dM3AI/AAAAAAAAAP4/_hIiCfe5YFcymF0AMUkYSlDp358Ts0UCgCLcBGAsYHQ/s0/Anh-anh-dep-trai-Taihinhanh-Vn%2B%25285%2529.jpg"));
        request.setAttribute("list",list);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/List.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
