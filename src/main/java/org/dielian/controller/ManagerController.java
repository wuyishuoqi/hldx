package org.dielian.controller;

import org.dielian.domain.Manager;
import org.dielian.service.ManagerService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

@RequestMapping("/logined")
@Controller
public class ManagerController {
    @Resource
    ManagerService managerService;
    @RequestMapping("/addmanager")
    public ModelAndView addManager(String name, String password,String loginname,String quanxian){
        try{
        String role=managerService.role(loginname);
        if (Objects.equals(role, "1")&&name!=null&&!Objects.equals(name, "")&&password!=null&& !Objects.equals(password, "")&&password.length()>=6){
        Manager manager=new Manager();
        manager.setName(name);
        manager.setPassword(password);
        manager.setRole(quanxian);
        int num=managerService.insertManager(manager);
        ModelAndView mv =new ModelAndView();
        mv.addObject("name",name);
        mv.addObject("password",password);
        mv.setViewName("addsuccess");
        return mv;
        }
        else{
            ModelAndView mv =new ModelAndView();
            mv.setViewName("addfail");
            return mv;
        }}
        catch (Exception e){
            ModelAndView mv =new ModelAndView();
            mv.setViewName("addfailexception");
            return mv;
        }
    }
    @RequestMapping("/updatemanager")
    public ModelAndView updateManager(String name, String password,String newpassword){
        Manager manager=new Manager();
        manager.setName(name);
        manager.setPassword(password);
        manager.setPassword(password);
        manager.setNewpassword(newpassword);
        try {
            int num=managerService.updateManager(manager);
            if (num!=0){
                ModelAndView mv =new ModelAndView();
                mv.addObject("name",name);
                mv.addObject("newpassword",newpassword);
                mv.setViewName("updatesuccess");
                return mv;}
            else {
                    ModelAndView mv =new ModelAndView();
                    mv.setViewName("updatefail");
                    return mv;
                }
        }catch (Exception e){
          ModelAndView mv =new ModelAndView();
          mv.setViewName("updatefail");
          return mv;
        }


    }

    @RequestMapping("/selectmanager")
    public List<Manager> selectManger(){
        List<Manager> list= managerService.selectManager();
        return list;
    }

}
