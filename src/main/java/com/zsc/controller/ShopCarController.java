package com.zsc.controller;

import com.zsc.domain.Article;
import com.zsc.domain.ArticleType;
import com.zsc.mapper.ArticleMapper;
import com.zsc.service.ArticleService;
import com.zsc.service.ArticleTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.DecimalFormat;
import java.util.*;

/*
 *@PackageName:com.zsc.controller
 *@ClassName:ShopCarController
 *@Description:
 *@author zhang
 *@date 2020/9/21 15:32
 */
@Controller
public class ShopCarController {
    @Autowired
    public ArticleMapper articleMapper;
    @Autowired
    public ArticleTypeService articleTypeService;

    @RequestMapping("/buy.action")
    public String toShopCar(Article article, Model model, HttpSession session){

        Map<Integer,Integer> ShopCarMap=new HashMap<>();
        ShopCarMap.put(article.getId(),article.getBuyNum());
        session.setAttribute("shopcar",ShopCarMap);

        return "redirect:showCar.action";
    }

    @RequestMapping("/showCar.action")
    public String showCar( Model model, HttpSession session){
        Map<Integer,Integer> shopcar = (Map<Integer,Integer>) session.getAttribute("shopcar");
        List<ArticleType> firstArticleTypes = articleTypeService.firstArticleType();
        List<Article>articleList=new ArrayList<>();
        Integer totalNum=0;
        Double totalPrice=0d;
        for (Map.Entry<Integer,Integer>map:shopcar.entrySet()){
            Integer id=map.getKey();
            Integer num=map.getValue();
            totalNum=totalNum+num;
            Article article = articleMapper.selectByPrimaryKey(id);
            Double discountPrice = article.getDiscountPrice();
            totalPrice=totalPrice+(discountPrice*num);
            System.out.println(discountPrice);
            article.setBuyNum(num);
            articleList.add(article);
        }
        model.addAttribute("firstArticleTypes",firstArticleTypes);
        model.addAttribute("articleList",articleList);
        model.addAttribute("totalNum",totalNum);

        DecimalFormat df=new DecimalFormat("0.00");
        model.addAttribute("totalPrice",df.format(totalPrice));

        return "shopcar";

    }

}
