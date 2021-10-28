package org.dielian.dao;

import org.dielian.domain.Manager;

import java.util.List;

public interface ManagerDao {
    int insertManager(Manager manager);
    List<Manager> selectManager();
    List<Manager> login(Manager manager);
    int updateManager(Manager manager);
    String role(String loginname);
}
