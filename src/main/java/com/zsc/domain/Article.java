package com.zsc.domain;

import java.text.DecimalFormat;
import java.util.Date;

public class Article {
    private Integer id;

    private String articleName;

    private String title;

    private String supplier;

    private Double price;

    private String locality;

    private Date putawayDate;

    private Integer storage;

    private String image;

    private String description;

    private String typeCode;

    private Date createDate;

    private Integer buyNum;


    public Double getDiscountPrice(){
        DecimalFormat decimalFormat=new DecimalFormat("0.00");
        return Double.valueOf(decimalFormat.format(0.8*this.price));
    }
    public Double getSmallTotal(){
        DecimalFormat decimalFormat=new DecimalFormat("0.00");
        return Double.valueOf(decimalFormat.format(this.buyNum*(0.8*this.price)));
    }


    public Integer getBuyNum() {
        return buyNum;
    }

    public void setBuyNum(Integer buyNum) {
        this.buyNum = buyNum;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getArticleName() {
        return articleName;
    }

    public void setArticleName(String articleName) {
        this.articleName = articleName == null ? null : articleName.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getSupplier() {
        return supplier;
    }

    public void setSupplier(String supplier) {
        this.supplier = supplier == null ? null : supplier.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getLocality() {
        return locality;
    }

    public void setLocality(String locality) {
        this.locality = locality == null ? null : locality.trim();
    }

    public Date getPutawayDate() {
        return putawayDate;
    }

    public void setPutawayDate(Date putawayDate) {
        this.putawayDate = putawayDate;
    }

    public Integer getStorage() {
        return storage;
    }

    public void setStorage(Integer storage) {
        this.storage = storage;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode == null ? null : typeCode.trim();
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public String toString() {
        return "Article{" +
                "id=" + id +
                ", articleName='" + articleName + '\'' +
                ", title='" + title + '\'' +
                ", supplier='" + supplier + '\'' +
                ", price=" + price +
                ", locality='" + locality + '\'' +
                ", putawayDate=" + putawayDate +
                ", storage=" + storage +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", typeCode='" + typeCode + '\'' +
                ", createDate=" + createDate +
                '}';
    }
}