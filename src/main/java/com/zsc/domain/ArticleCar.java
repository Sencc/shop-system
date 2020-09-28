package com.zsc.domain;

import java.util.Date;

public class ArticleCar {
    private Integer id;

    private Integer ecArticleId;

    private Integer ecArticleNum;

    private Integer ecUser;

    private Date createDate;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getEcArticleId() {
        return ecArticleId;
    }

    public void setEcArticleId(Integer ecArticleId) {
        this.ecArticleId = ecArticleId;
    }

    public Integer getEcArticleNum() {
        return ecArticleNum;
    }

    public void setEcArticleNum(Integer ecArticleNum) {
        this.ecArticleNum = ecArticleNum;
    }

    public Integer getEcUser() {
        return ecUser;
    }

    public void setEcUser(Integer ecUser) {
        this.ecUser = ecUser;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}