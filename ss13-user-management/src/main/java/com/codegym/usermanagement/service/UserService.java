package com.codegym.usermanagement.service;

import com.codegym.usermanagement.model.User;
import com.codegym.usermanagement.repository.BaseRepository;
import com.codegym.usermanagement.repository.IUserRepository;
import com.codegym.usermanagement.repository.UserRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class UserService implements com.codegym.usermanagement.service.IUserService {
    IUserRepository userRepository = new UserRepository();

    @Override
    public void insertUser(User user) {
        userRepository.insertUser(user);
    }

    @Override
    public User selesctUser(int id) {
        return userRepository.selesctUser(id);
    }

    @Override
    public List<User> selectAllUser() {
        return userRepository.selectAllUser();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepository.deleteUser(id);
    }

    @Override
    public void updateUser(User user) throws SQLException {
        userRepository.updateUser(user);
    }

    @Override
    public List<User> searchByCountry(String country) {
        return userRepository.searchByCountry(country);
    }

    @Override
    public List<User> sortByName() {
        return userRepository.sortByName();
    }

    @Override
    public User getUserById(int id) {
        return userRepository.getUserById(id);
    }

    @Override
    public void insertUserStore(User user) throws SQLException {
        userRepository.insertUserStore(user);
    }

    @Override
    public void addUserTransaction(User user, int[] permisions) {
        userRepository.addUserTransaction(user, permisions);
    }
}
