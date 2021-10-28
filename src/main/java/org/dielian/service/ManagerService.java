package org.dielian.service;

import org.dielian.dao.ManagerDao;
import org.dielian.domain.Manager;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Service
public class ManagerService {
    @Resource
    private ManagerDao managerDao;
    @Transactional
    public int insertManager(Manager manager){
        return managerDao.insertManager(manager);
    }
    @Transactional
    public List<Manager> selectManager(){
        return managerDao.selectManager();
    }
    @Transactional
    public int updateManager(Manager manager){return managerDao.updateManager(manager);}
    @Transactional
    public List<Manager> loginManager(Manager manager){
        return managerDao.login(manager);
    }
    @Transactional
    public String role(String loginname){return managerDao.role(loginname);}
}
