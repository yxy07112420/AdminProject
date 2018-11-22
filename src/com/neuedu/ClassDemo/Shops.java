package com.neuedu.ClassDemo;

import java.math.BigDecimal;
import java.util.Date;

public class Shops {
    public Shops(){

    }
      public Shops(Integer shopId, String shopName, String shopType, String shopStyle, Date shopTime, BigDecimal shopMoney, Integer shopNumber, Integer shopSellNumber, String shopImages, String shopDescribe, Date shopCheckTime) {
        this.shopId = shopId;
        this.shopName = shopName;
        this.shopType = shopType;
        this.shopStyle = shopStyle;
        this.shopTime = shopTime;
        this.shopMoney = shopMoney;
        this.shopNumber = shopNumber;
        this.shopSellNumber = shopSellNumber;
        this.shopImages = shopImages;
        this.shopDescribe = shopDescribe;
        this.shopCheckTime = shopCheckTime;
    }

    //商品编号
    private Integer shopId;
    //商品名
    private String shopName;
    //商品类型
    private String shopType;
    //商品品牌
    private String shopStyle;
    //商品的生产日期
    private Date shopTime;
    //商品的销售价格
    private BigDecimal shopMoney;
    //商品的库存数量
    private Integer shopNumber;
    //商品的以售数量
    private Integer shopSellNumber;
    //商品的图片
    private String shopImages;
    //商品的描述
    private String shopDescribe;
    //商品的修改日期
    private Date shopCheckTime;

    public Integer getShopId() {
        return shopId;
    }

    public void setShopId(Integer shopId) {
        this.shopId = shopId;
    }

    public String getShopName() {
        return shopName;
    }

    public void setShopName(String shopName) {
        this.shopName = shopName;
    }

    public String getShopType() {
        return shopType;
    }

    public void setShopType(String shopType) {
        this.shopType = shopType;
    }

    public String getShopStyle() {
        return shopStyle;
    }

    public void setShopStyle(String shopStyle) {
        this.shopStyle = shopStyle;
    }

    public Date getShopTime() {
        return shopTime;
    }

    public void setShopTime(Date shopTime) {
        this.shopTime = shopTime;
    }

    public BigDecimal getShopMoney() {
        return shopMoney;
    }

    public void setShopMoney(BigDecimal shopMoney) {
        this.shopMoney = shopMoney;
    }

    public Integer getShopNumber() {
        return shopNumber;
    }

    public void setShopNumber(Integer shopNumber) {
        this.shopNumber = shopNumber;
    }

    public Integer getShopSellNumber() {
        return shopSellNumber;
    }

    public void setShopSellNumber(Integer shopSellNumber) {
        this.shopSellNumber = shopSellNumber;
    }

    public String getShopImages() {
        return shopImages;
    }

    public void setShopImages(String shopImages) {
        this.shopImages = shopImages;
    }

    public String getShopDescribe() {
        return shopDescribe;
    }

    public void setShopDescribe(String shopDescribe) {
        this.shopDescribe = shopDescribe;
    }

    public Date getShopCheckTime() {
        return shopCheckTime;
    }

    public void setShopCheckTime(Date shopCheckTime) {
        this.shopCheckTime = shopCheckTime;
    }
    @Override
    public String toString() {
        return "Shops{" +
                "shopId=" + shopId +
                ", shopName='" + shopName + '\'' +
                ", shopType='" + shopType + '\'' +
                ", shopStyle='" + shopStyle + '\'' +
                ", shopTime=" + shopTime +
                ", shopMoney=" + shopMoney +
                ", shopNumber=" + shopNumber +
                ", shopSellNumber=" + shopSellNumber +
                ", shopImages='" + shopImages + '\'' +
                ", shopDescribe='" + shopDescribe + '\'' +
                ", shopCheckTime=" + shopCheckTime +
                '}';
    }
}
