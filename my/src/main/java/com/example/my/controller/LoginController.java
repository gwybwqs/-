package com.example.my.controller;


import com.alibaba.fastjson.JSONObject;
import com.example.my.model.Login;
import com.example.my.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@RestController
public class LoginController {
    @Autowired
    LoginService loginService;
    @PostMapping("/loginCheck")
    public Login login(Login login, HttpServletRequest request){
        Login b = null;
        if (loginService.login(login)!=null){
            request.getSession().setAttribute("login",loginService.login(login));
            b =loginService.login(login);
        }
        return b;
    }
    @PostMapping("/updatePassord")
    public void updatePassword(Login login){
        loginService.updatePassword(login);
    }
    @RequestMapping("/name")
    public Login username(HttpServletRequest request){
        Login login = (Login) request.getSession().getAttribute("login");
        return login;
    }
}
