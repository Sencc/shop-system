package com.zsc.service.impl;
/*
 *@PackageName:com.zsc.service.impl
 *@ClassName:ArticleTypeServiceImpl
 *@Description:
 *@author zhang
 *@date 2020/9/15 15:40
 */

import com.github.pagehelper.PageHelper;
import com.zsc.domain.Article;
import com.zsc.domain.ArticleExample;
import com.zsc.domain.ArticleType;
import com.zsc.domain.ArticleTypeExample;
import com.zsc.mapper.ArticleMapper;
import com.zsc.mapper.ArticleTypeMapper;
import com.zsc.service.ArticleTypeService;
import com.zsc.vo.SearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleTypeServiceImpl implements ArticleTypeService {
    @Autowired
    private ArticleTypeMapper articleTypeMapper;
    @Autowired
    private ArticleMapper articleMapper;

    @Override//查询商品一级分类
    public List<ArticleType> firstArticleType() {
        ArticleTypeExample articleTypeExample=new ArticleTypeExample();
        ArticleTypeExample.Criteria createCriteria = articleTypeExample.createCriteria();
        createCriteria.andCodeLike("00__");
        List<ArticleType> firstArticleTypes = articleTypeMapper.selectByExample(articleTypeExample);
        return firstArticleTypes;
    }

    @Override//查询商品二级分类
    public List<ArticleType> sencondArticleType() {
        ArticleTypeExample articleTypeExample=new ArticleTypeExample();
        ArticleTypeExample.Criteria createCriteria = articleTypeExample.createCriteria();
        createCriteria.andCodeLike("00______");
        List<ArticleType> sencondArticleTypes = articleTypeMapper.selectByExample(articleTypeExample);

        return sencondArticleTypes;
    }

    @Override
    public List<Article> getArticleList(SearchVo searchVo) {

        ArticleExample articleExample=new ArticleExample();
        ArticleExample.Criteria createCriteria = articleExample.createCriteria();
            if (searchVo.getCode()!=null&&!"".equals(searchVo.getCode())){
            createCriteria.andTypeCodeEqualTo(searchVo.getCode());


            }
            if (searchVo.getKeyword()!=null&&!"".equals(searchVo.getKeyword())){
            createCriteria.andTitleLike("%"+searchVo.getKeyword()+"%");
            }

            if (searchVo.getFirstcode()!=null&&!"".equals(searchVo.getFirstcode())){
            createCriteria.andTypeCodeLike(searchVo.getFirstcode()+"____");
            }



        PageHelper.startPage(searchVo.getPageIndex(),searchVo.getPageSize());
        List<Article> articleList = articleMapper.selectByExample(articleExample);
        return articleList;
    }


}
