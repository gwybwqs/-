package com.example.my.confige;


import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
public class LoginConfige implements WebMvcConfigurer {
    //拦截器的配置以及拦截路径配置
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor()).addPathPatterns("/*").excludePathPatterns(
                "/static/lib/**","/static/css/*", "/static/js/*","/loginCheck"
        );


    }
}
