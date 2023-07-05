package com.codegym.usermanagement.service;

import com.codegym.usermanagement.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

public interface IUserService {
    public void insertUser(User user);

    public User selesctUser(int id);

    public List<User> selectAllUser();

    public boolean deleteUser(int id) throws SQLException;

    public void updateUser(User user) throws SQLException;

    List<User> searchByCountry(String country);


    List<User> sortByName();

    User getUserById(int id);

    void insertUserStore(User user) throws SQLException;

    void addUserTransaction(User user, int[] permisions);
}
