package com.zsc.service;

import com.zsc.domain.Article;
import com.zsc.domain.ArticleType;
import com.zsc.vo.SearchVo;

import java.util.List;

public interface ArticleTypeService {
    //查询商品一级分类
    List<ArticleType> firstArticleType();

    //查询商品二级分类
    List<ArticleType> sencondArticleType();

    //查询所有商品
    List<Article> getArticleList(SearchVo searchVo);


}
