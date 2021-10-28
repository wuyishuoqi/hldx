package org.dielian.dao;

import org.dielian.domain.User;

import java.util.List;

public interface UserDao {
    List<User> selectUser();
    int insertUser(User user);
    int dellUser(String name);
}
