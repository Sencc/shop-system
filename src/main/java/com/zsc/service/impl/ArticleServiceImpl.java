package com.zsc.service.impl;
/*
 *@PackageName:com.zsc.service.impl
 *@ClassName:ArticleServiceImpl
 *@Description:
 *@author zhang
 *@date 2020/9/18 10:49
 */

import com.zsc.domain.Article;
import com.zsc.domain.ArticleExample;
import com.zsc.domain.ArticleType;
import com.zsc.domain.ArticleTypeExample;
import com.zsc.mapper.ArticleMapper;
import com.zsc.mapper.ArticleTypeMapper;
import com.zsc.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private ArticleTypeMapper articleTypeMapper;
    @Override
    public List<Article> findArticleList(String typeCode) {

        ArticleExample articleExample=new ArticleExample();
        ArticleExample.Criteria exampleCriteria = articleExample.createCriteria();
        exampleCriteria.andTypeCodeLike(typeCode + "____");
        List<Article> articles = articleMapper.selectByExample(articleExample);
        return articles;
    }

    @Override
    public Article findArticleListById(int articleId) {
        Article article = articleMapper.selectByPrimaryKey(articleId);
        return article;
    }
}
