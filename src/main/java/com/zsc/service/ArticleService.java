package com.zsc.service;

import com.zsc.domain.Article;
import com.zsc.domain.ArticleType;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface ArticleService {

    //查询物品列表
    public List<Article> findArticleList(String  typeCode);
    public Article findArticleListById(int articleId);
}
