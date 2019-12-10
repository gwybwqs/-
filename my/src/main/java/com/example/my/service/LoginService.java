package com.example.my.service;


import com.example.my.DAO.LoginJPA;
import com.example.my.model.Login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginService {
    @Autowired
    LoginJPA loginJPA;
    public Login login(Login login){
        Login r = null;
        for (int i = 0;i<loginJPA.findAll().size();i++){
            if (login.getId().equals(loginJPA.findAll().get(i).getId())&&login.getPassword().equals(loginJPA.findAll().get(i).getPassword())){
                r = loginJPA.findAll().get(i);
            }
        }
        return r;
    }
    public boolean updatePassword(Login login){
        boolean b = false;
        try {
            loginJPA.save(login);
            b = true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return b;
    }
}
