package com.zsc.service;

import com.zsc.domain.Account;
import org.springframework.stereotype.Service;

import java.util.List;


public interface AccountService {

    public void save(Account account);
    public List<Account> finAll();
}
