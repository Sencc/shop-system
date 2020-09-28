package com.zsc.service.impl;

import com.zsc.domain.User;
import com.zsc.domain.UserExample;
import com.zsc.mapper.UserMapper;
import com.zsc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/*
 *@PackageName:com.zsc.service.impl
 *@ClassName:UserServiceImpl
 *@Description:
 *@author zhang
 *@date 2020/9/17 14:29
 */
@Service
public class UserServiceImpl implements UserService{
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> getUserByloginName(User user) {
        UserExample userExample=new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andLoginNameEqualTo(user.getLoginName());
        List<User> users = userMapper.selectByExample(userExample);
        return users;
    }

    @Override//用户注册
    public User saveUser(User user) {
         userMapper.insertSelective(user);

         return null;
    }

    @Override//用户登录
    public User userLogin(User user) {
        UserExample userExample=new UserExample();
        UserExample.Criteria criteria = userExample.createCriteria();
        criteria.andLoginNameEqualTo(user.getLoginName());
        criteria.andPassWordEqualTo(user.getPassWord());
        List<User> users =  userMapper.selectByExample(userExample);
        //System.out.println(users.size());
        if (users.size()!=0){
            return users.get(0);
        }
        else {
            return null;
        }

    }
}
