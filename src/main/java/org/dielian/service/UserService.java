package org.dielian.service;

import org.dielian.dao.UserDao;
import org.dielian.domain.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserService {
    @Resource
    private UserDao userDao;
    @Transactional
  public   List<User> selectUser(){
        return userDao.selectUser();
    };
    @Transactional
  public   int insertUser(User user){
        return userDao.insertUser(user);
    };
    @Transactional
  public   int dellUser(String name){
        return userDao.dellUser(name);
    };
}
