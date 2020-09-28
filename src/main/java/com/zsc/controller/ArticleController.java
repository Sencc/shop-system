package com.zsc.controller;

import com.zsc.domain.Article;
import com.zsc.domain.ArticleType;
import com.zsc.service.ArticleService;
import com.zsc.service.ArticleTypeService;
import com.zsc.vo.SearchVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/*
 *@PackageName:com.zsc.controller
 *@ClassName:ArticleController
 *@Description:
 *@author zhang
 *@date 2020/9/18 10:48
 */
@Controller
public class ArticleController {
    @Autowired
    private ArticleService articleService;
    @Autowired
    private ArticleTypeService articleTypeService;

    @RequestMapping("/item.action")
    public String toAction(Article article, Model model, SearchVo searchVo){
        List<ArticleType> firstArticleTypes = articleTypeService.firstArticleType();
        Article article1 = articleService.findArticleListById(article.getId());
        model.addAttribute("article",article1);
        model.addAttribute("firstArticleTypes",firstArticleTypes);

        return "item";
    }

}
