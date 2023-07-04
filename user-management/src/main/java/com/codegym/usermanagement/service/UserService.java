package com.codegym.usermanagement.service;

import com.codegym.usermanagement.model.User;
import com.codegym.usermanagement.repository.IUserRepository;
import com.codegym.usermanagement.repository.UserRepository;

import java.sql.SQLException;
import java.util.List;

public class UserService implements com.codegym.usermanagement.service.IUserService {
    IUserRepository userRepository= new UserRepository();

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
    public boolean updateUser(User user) throws SQLException {
        return userRepository.updateUser(user);
    }
}
