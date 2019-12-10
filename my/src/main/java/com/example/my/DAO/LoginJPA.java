package com.example.my.DAO;

import com.example.my.model.Login;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface LoginJPA extends JpaRepository<Login,Long> {

}
