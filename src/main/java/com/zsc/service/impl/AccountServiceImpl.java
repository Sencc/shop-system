package com.zsc.service.impl;
/*
 *@PackageName:com.zsc.service.impl
 *@ClassName:AccountServiceImpl
 *@Description:
 *@author zhang
 *@date 2020/9/14 14:36
 */

import com.zsc.domain.Account;
import com.zsc.mapper.AccountMapper;
import com.zsc.service.AccountService;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.stereotype.Service;
import org.apache.ibatis.io.Resources;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
@Service("accountService")
public class AccountServiceImpl implements AccountService {
    @Override
    public void save(Account account) {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
            SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession session=sessionFactory.openSession();
            AccountMapper mapper = session.getMapper(AccountMapper.class);
            mapper.save(account);
            session.commit();
            session.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<Account> finAll() {
        try {
            InputStream resourceAsStream = Resources.getResourceAsStream("sqlMapConfig.xml");
            SqlSessionFactory sessionFactory = new SqlSessionFactoryBuilder().build(resourceAsStream);
            SqlSession session=sessionFactory.openSession();
            AccountMapper mapper = session.getMapper(AccountMapper.class);
            List<Account> accountList = mapper.findAll();
            session.close();
            return accountList;
        } catch (IOException e) {
            e.printStackTrace();
        }return null;
    }
}
