package org.dielian.controller;

import com.github.pagehelper.PageHelper;
import org.dielian.domain.User;
import org.dielian.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;
@RequestMapping("/logined")
@Controller
public class UserController {
    @Resource
    UserService userService;
    @RequestMapping("/select")
    public ModelAndView select(){
        ModelAndView mv= new ModelAndView();
        PageHelper.startPage(1,3);
        List<User> list =userService.selectUser();
        User user0= list.get(0);
        User user1= list.get(1);
        User user2= list.get(2);
        mv.addObject("user0",user0);
        mv.addObject("user1",user1);
        mv.addObject("user2",user2);
        mv.setViewName("forward:/show.jsp");
                return mv;
    }
    @RequestMapping("/ajax")
    public ModelAndView ajax(){
        ModelAndView mv= new ModelAndView();
        mv.setViewName("ajax");
        return mv;
    }
//    redirect:/show.jsp
    @ResponseBody
    @RequestMapping("/query")
    public ModelAndView query(){
        ModelAndView mv= new ModelAndView();
        mv.setViewName("viw");
        return mv;
    }
    @RequestMapping("/dell")
    public ModelAndView dellUser(String name){
        ModelAndView mv= new ModelAndView();
        mv.setViewName("delluser");
        int num=userService.dellUser(name);
        return mv;
    }
    @RequestMapping("/zhuan")
    @ResponseBody
    public List<User> zhuan(Integer ye){
        PageHelper.startPage(ye,8);
        List<User> list=userService.selectUser();
        return list;
    }
}
