package com.zsc.controller;

import com.zsc.domain.User;
import com.zsc.service.UserService;
import com.zsc.utils.verifyCode.verify;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;
import java.util.List;

/*
 *@PackageName:com.zsc.controller
 *@ClassName:UserController
 *@Description:
 *@author zhang
 *@date 2020/9/17 11:25
 */
@Controller
public class UserController {

    @RequestMapping("/toRegister")
    private String  toRegister(){
       return "register";
    }

    @RequestMapping("tologin.action")
    public String toLogin(){
        return "login";
    }

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/toRegisterVaild",produces = "text/html;charset=UTF-8")
    @ResponseBody
    private String toRegisterVaild(@RequestBody User user){
        String loginName_error=null;
        List<User> users = userService.getUserByloginName(user);
         if (users!=null&&users.size()>0){
             loginName_error="用户名已存在，请重新输入！";
             return loginName_error;

         }
         return loginName_error;
    }

    @RequestMapping("/register.action")
    public String registerUser(User user, HttpSession session, Model model){
            String tip="";
        if (session.getAttribute("verify_code").equals(user.getAuthcode())){
            user.setCreateDate(new Date());
            userService.saveUser(user);
            tip="注册成功，请登录";
            model.addAttribute("tip",tip);
        }else {
            tip="验证码错误，请重新输入！";
            model.addAttribute("tip",tip);
        }

        return "register";

    }

    @RequestMapping("/login.action")
    public String login(User user,HttpSession session,Model model){
        User login = userService.userLogin(user);
        String message="";
        if (login==null){
            message="用户名不存在或密码错误，请重新登录！";
            model.addAttribute("message",message);
            return "login";
        }else {
            //redirect: forward:
        session.setAttribute("session_user",login);
        return "redirect:toIndex";}
    }

    @RequestMapping("/quit.action")
    public String quickLogin(HttpSession session){
        session.invalidate();
        return  "redirect:toIndex";
    }

    @RequestMapping(value = "/verify.action")
    public void verify(HttpServletResponse response, HttpSession session) throws IOException{
        response.setContentType("images/jpeg");
        verify verify=new verify();
        verify.getVerifyCode();
        String code = verify.getCode();
        BufferedImage image = verify.getImage();
        session.setAttribute("verify_code", code);
        verify.gdispose();
        ImageIO.write(image, "jpeg", response.getOutputStream());

    }

}
