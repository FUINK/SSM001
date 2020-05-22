package com.swjd.service;

import com.swjd.bean.User;
import com.swjd.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public User findUnameAndPwd(User user) {
        return userMapper.findUserByUnameAndPwd(user);
    }
}
