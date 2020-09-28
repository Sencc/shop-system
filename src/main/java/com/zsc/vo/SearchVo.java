package com.zsc.vo;
/*
 *@PackageName:com.zsc.vo
 *@ClassName:SearchVo
 *@Description:
 *@author zhang
 *@date 2020/9/16 16:58
 */

import com.github.pagehelper.PageInfo;
import com.zsc.utils.common.Constants;

public class SearchVo {
    private String code;
    private String keyword;
    private String firstcode;
    private Integer pageSize= Constants.PAGE_DEFAULT_SIZE;
    private Integer pageIndex=0;
    private Integer recordCount;
    private PageInfo pageInfo;

    public PageInfo getPageInfo() {
        return pageInfo;
    }

    public void setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getFirstcode() {
        return firstcode;
    }

    public void setFirstcode(String firstcode) {
        this.firstcode = firstcode;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(Integer pageIndex) {
        this.pageIndex = pageIndex;
    }

    public Integer getRecordCount() {
        return recordCount;
    }

    public void setRecordCount(Integer recordCount) {
        this.recordCount = recordCount;
    }
}
