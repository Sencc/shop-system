package com.zsc.controller;
/*
 *@PackageName:com.zsc.controller
 *@ClassName:AccountController
 *@Description:
 *@author zhang
 *@date 2020/9/14 14:38
 */

import com.zsc.domain.Account;
import com.zsc.service.AccountService;
import com.zsc.service.impl.AccountServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/account")
public class AccountController {

    @Autowired
    private AccountService accountService;

    @RequestMapping(value = "/save",produces = "text/html;charset=UTF-8")
    @ResponseBody
    public String save(Account account){
        accountService.save(account);
        return "保存成功!";
    }

    @RequestMapping("/findAll")
    public ModelAndView findAll(){
        List<Account> accountList=accountService.finAll();
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("accountList",accountList);
        System.out.println(accountList);
        modelAndView.setViewName("accountlist");
        return modelAndView;
    }


}
