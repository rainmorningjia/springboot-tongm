package com.baizhi.controller;

import com.baizhi.entity.User;
import com.baizhi.mapper.UserMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author Miles
 * @Title: TestController
 * @ProjectName spring-boot
 * @Date 2018/12/12--16:50
 */
@Controller
@RequestMapping("/user")
public class TestController {
    @Resource
    UserMapper userMapper;
    @RequestMapping("queryAll")
    @ResponseBody
    public List<User> queryAll(){
        List<User> userList=userMapper.selectAll();
        return userList;
    }
}
