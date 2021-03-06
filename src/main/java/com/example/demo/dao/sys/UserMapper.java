package com.example.demo.dao.sys;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.core.toolkit.Constants;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.demo.model.sys.User;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author shenzhen
 * @since 2020-05-18
 */
public interface UserMapper extends BaseMapper<User> {

    IPage<User> userList(Page<User> page , @Param(Constants.WRAPPER) Wrapper<User> wrapper);
}
