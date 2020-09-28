package com.zsc.controller;

import com.zsc.domain.Account;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/*
 *@PackageName:com.zsc.controller
 *@ClassName:jasonTestController
 *@Description:
 *@author zhang
 *@date 2020/9/15 10:05
 */

@Controller
@ResponseBody
public class jasonTestController {
    @RequestMapping(value="/sendjson",method=RequestMethod.POST)

    public Account sendjson(@RequestBody Account product)
    {
        System.out.println("product:"+product);
        return product;
    }
}
