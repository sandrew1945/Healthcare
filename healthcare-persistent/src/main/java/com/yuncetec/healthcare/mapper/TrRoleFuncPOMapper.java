package com.yuncetec.healthcare.mapper;

import com.yuncetec.healthcare.model.TrRoleFuncPO;

public interface TrRoleFuncPOMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tr_role_func
     *
     * @mbggenerated Sat Apr 16 13:49:44 CST 2016
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tr_role_func
     *
     * @mbggenerated Sat Apr 16 13:49:44 CST 2016
     */
    int insert(TrRoleFuncPO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tr_role_func
     *
     * @mbggenerated Sat Apr 16 13:49:44 CST 2016
     */
    int insertSelective(TrRoleFuncPO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tr_role_func
     *
     * @mbggenerated Sat Apr 16 13:49:44 CST 2016
     */
    TrRoleFuncPO selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tr_role_func
     *
     * @mbggenerated Sat Apr 16 13:49:44 CST 2016
     */
    int updateByPrimaryKeySelective(TrRoleFuncPO record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tr_role_func
     *
     * @mbggenerated Sat Apr 16 13:49:44 CST 2016
     */
    int updateByPrimaryKey(TrRoleFuncPO record);
}