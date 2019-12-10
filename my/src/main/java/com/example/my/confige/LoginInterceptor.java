package com.example.my.confige;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //登陆不做拦截
       if(request.getRequestURI().equals("/login")){
           return true;
       }
       Object obj = request.getSession().getAttribute("login");
       if(obj == null){
           response.sendRedirect("/login");
           return false;
       }
        return true;
    }
}

