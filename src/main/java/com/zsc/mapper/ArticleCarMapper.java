package com.zsc.mapper;

import com.zsc.domain.ArticleCar;
import com.zsc.domain.ArticleCarExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface ArticleCarMapper {
    long countByExample(ArticleCarExample example);

    int deleteByExample(ArticleCarExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(ArticleCar record);

    int insertSelective(ArticleCar record);

    List<ArticleCar> selectByExample(ArticleCarExample example);

    ArticleCar selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") ArticleCar record, @Param("example") ArticleCarExample example);

    int updateByExample(@Param("record") ArticleCar record, @Param("example") ArticleCarExample example);

    int updateByPrimaryKeySelective(ArticleCar record);

    int updateByPrimaryKey(ArticleCar record);
}