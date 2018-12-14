package com.baizhi.entity;

import com.alibaba.fastjson.annotation.JSONField;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import tk.mybatis.mapper.annotation.KeySql;

import java.io.Serializable;
import java.util.Date;

/**
 * @author jiayu
 * @Title: User
 * @ProjectName spring-boot
 * @Date 2018/12/12--16:44
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class User implements Serializable {
    @KeySql(useGeneratedKeys = true)
    private String id;
    private String name;
    private String email;
    private String city;

   /** jackson的日期格式注解 @JsonFormat*/
    private Date birthday;
}
