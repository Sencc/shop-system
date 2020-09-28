package com.zsc.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ArticleCarExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ArticleCarExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andIdIsNull() {
            addCriterion("ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdIsNull() {
            addCriterion("ec_article_id is null");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdIsNotNull() {
            addCriterion("ec_article_id is not null");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdEqualTo(Integer value) {
            addCriterion("ec_article_id =", value, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdNotEqualTo(Integer value) {
            addCriterion("ec_article_id <>", value, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdGreaterThan(Integer value) {
            addCriterion("ec_article_id >", value, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("ec_article_id >=", value, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdLessThan(Integer value) {
            addCriterion("ec_article_id <", value, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdLessThanOrEqualTo(Integer value) {
            addCriterion("ec_article_id <=", value, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdIn(List<Integer> values) {
            addCriterion("ec_article_id in", values, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdNotIn(List<Integer> values) {
            addCriterion("ec_article_id not in", values, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdBetween(Integer value1, Integer value2) {
            addCriterion("ec_article_id between", value1, value2, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleIdNotBetween(Integer value1, Integer value2) {
            addCriterion("ec_article_id not between", value1, value2, "ecArticleId");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumIsNull() {
            addCriterion("ec_article_num is null");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumIsNotNull() {
            addCriterion("ec_article_num is not null");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumEqualTo(Integer value) {
            addCriterion("ec_article_num =", value, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumNotEqualTo(Integer value) {
            addCriterion("ec_article_num <>", value, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumGreaterThan(Integer value) {
            addCriterion("ec_article_num >", value, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumGreaterThanOrEqualTo(Integer value) {
            addCriterion("ec_article_num >=", value, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumLessThan(Integer value) {
            addCriterion("ec_article_num <", value, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumLessThanOrEqualTo(Integer value) {
            addCriterion("ec_article_num <=", value, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumIn(List<Integer> values) {
            addCriterion("ec_article_num in", values, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumNotIn(List<Integer> values) {
            addCriterion("ec_article_num not in", values, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumBetween(Integer value1, Integer value2) {
            addCriterion("ec_article_num between", value1, value2, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcArticleNumNotBetween(Integer value1, Integer value2) {
            addCriterion("ec_article_num not between", value1, value2, "ecArticleNum");
            return (Criteria) this;
        }

        public Criteria andEcUserIsNull() {
            addCriterion("ec_user is null");
            return (Criteria) this;
        }

        public Criteria andEcUserIsNotNull() {
            addCriterion("ec_user is not null");
            return (Criteria) this;
        }

        public Criteria andEcUserEqualTo(Integer value) {
            addCriterion("ec_user =", value, "ecUser");
            return (Criteria) this;
        }

        public Criteria andEcUserNotEqualTo(Integer value) {
            addCriterion("ec_user <>", value, "ecUser");
            return (Criteria) this;
        }

        public Criteria andEcUserGreaterThan(Integer value) {
            addCriterion("ec_user >", value, "ecUser");
            return (Criteria) this;
        }

        public Criteria andEcUserGreaterThanOrEqualTo(Integer value) {
            addCriterion("ec_user >=", value, "ecUser");
            return (Criteria) this;
        }

        public Criteria andEcUserLessThan(Integer value) {
            addCriterion("ec_user <", value, "ecUser");
            return (Criteria) this;
        }

        public Criteria andEcUserLessThanOrEqualTo(Integer value) {
            addCriterion("ec_user <=", value, "ecUser");
            return (Criteria) this;
        }

        public Criteria andEcUserIn(List<Integer> values) {
            addCriterion("ec_user in", values, "ecUser");
            return (Criteria) this;
        }

        public Criteria andEcUserNotIn(List<Integer> values) {
            addCriterion("ec_user not in", values, "ecUser");
            return (Criteria) this;
        }

        public Criteria andEcUserBetween(Integer value1, Integer value2) {
            addCriterion("ec_user between", value1, value2, "ecUser");
            return (Criteria) this;
        }

        public Criteria andEcUserNotBetween(Integer value1, Integer value2) {
            addCriterion("ec_user not between", value1, value2, "ecUser");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNull() {
            addCriterion("CREATE_DATE is null");
            return (Criteria) this;
        }

        public Criteria andCreateDateIsNotNull() {
            addCriterion("CREATE_DATE is not null");
            return (Criteria) this;
        }

        public Criteria andCreateDateEqualTo(Date value) {
            addCriterionForJDBCDate("CREATE_DATE =", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("CREATE_DATE <>", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThan(Date value) {
            addCriterionForJDBCDate("CREATE_DATE >", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("CREATE_DATE >=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThan(Date value) {
            addCriterionForJDBCDate("CREATE_DATE <", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("CREATE_DATE <=", value, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateIn(List<Date> values) {
            addCriterionForJDBCDate("CREATE_DATE in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("CREATE_DATE not in", values, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("CREATE_DATE between", value1, value2, "createDate");
            return (Criteria) this;
        }

        public Criteria andCreateDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("CREATE_DATE not between", value1, value2, "createDate");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}