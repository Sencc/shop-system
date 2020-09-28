package com.zsc.service;

import com.zsc.domain.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    public List<User> getUserByloginName(User user);

    User saveUser(User user);

    User userLogin(User user );
}
