package org.dielian.controller;

import com.github.pagehelper.PageHelper;
import org.dielian.domain.Manager;
import org.dielian.domain.User;
import org.dielian.service.ManagerService;
import org.dielian.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class LoginController {
    @Resource
    ManagerService managerService;
    @Resource
    UserService userService;
    @RequestMapping("/login")
    public ModelAndView login(String name, String password){
        Manager manager=new Manager();
        manager.setName(name);
        manager.setPassword(password);
        List<Manager> list=managerService.loginManager(manager);
        if (list.isEmpty()){
            ModelAndView mvfail = new ModelAndView();
            mvfail.setViewName("loginfail");
            return mvfail;
        }
        ModelAndView mv = new ModelAndView();
        mv.addObject("loginname",name);
        mv.addObject("manager",manager);
        mv.setViewName("loginsuccess");
        return mv;
    }
    @RequestMapping("/add")
    public ModelAndView add(String name, String cellphone, String wechat, String address,String problem,String time,String date){
        if(cellphone.length()!=11){
            ModelAndView mv =new ModelAndView();
            mv.setViewName("baoxiufail");
            return mv;
        }else {
        ModelAndView mv =new ModelAndView();
        User user=new User();
        user.setName(name);
        user.setCellphone(cellphone);
        user.setWechat(wechat);
        user.setAddress(address);
        user.setProblem(problem);
        user.setTime(time);
        user.setDate(date);
        int x=userService.insertUser(user);
        mv.setViewName("baoxiusuccess");
        return mv; }
    }
    @RequestMapping("/zhuan")
    @ResponseBody
    public List<User> zhuan(Integer ye){
        PageHelper.startPage(ye,8);
        List<User> list=userService.selectUser();
        return list;
    }
}
