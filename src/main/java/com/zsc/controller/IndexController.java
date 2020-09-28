package com.zsc.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.zsc.domain.Article;
import com.zsc.domain.ArticleType;
import com.zsc.service.ArticleService;
import com.zsc.service.ArticleTypeService;
import com.zsc.service.impl.ArticleTypeServiceImpl;
import com.zsc.vo.SearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/*
 *@PackageName:com.zsc.controller
 *@ClassName:IndexController
 *@Description:
 *@author zhang
 *@date 2020/9/15 14:29
 */
@Controller
public class IndexController {

    @Autowired
    ArticleTypeService articleTypeService;
    @Autowired
    ArticleService articleService;

    @RequestMapping(value = "toIndex")
    public String toIndex(Model model,SearchVo searchVo,HttpSession session){
        //查询商品一级分类
        List<ArticleType> firstArticleTypes = articleTypeService.firstArticleType();
        //查询商品二级分类
        List<ArticleType> sencondArticleTypes = articleTypeService.sencondArticleType();
        //查询所有商品
        List<Article> articles = articleTypeService.getArticleList(searchVo);

        PageInfo pageInfo=new PageInfo(articles);
        searchVo.setPageIndex(pageInfo.getPageNum());
        searchVo.setPageSize(pageInfo.getPageSize());
        searchVo.setRecordCount((int) pageInfo.getTotal());
        model.addAttribute("firstArticleTypes",firstArticleTypes);
        model.addAttribute("sencondArticleTypes",sencondArticleTypes);
        model.addAttribute("searchVo",searchVo);
        model.addAttribute("articles",articles);
        return  "list";

    }

    @RequestMapping("/index.action")
    public String IndexAction(String typeCode, Model model,SearchVo searchVo){
        //查询商品一级分类
        List<ArticleType> firstArticleTypes = articleTypeService.firstArticleType();
        List<Article> articleList = articleService.findArticleList(typeCode);
        PageInfo pageInfo=new PageInfo(articleList);
        searchVo.setPageIndex(pageInfo.getPageNum());
        searchVo.setPageSize(pageInfo.getPageSize());
        searchVo.setRecordCount((int) pageInfo.getTotal());
        model.addAttribute("searchVo",searchVo);
        model.addAttribute("articles",articleList);
        model.addAttribute("firstArticleTypes",firstArticleTypes);
        return "list";
    }

}
