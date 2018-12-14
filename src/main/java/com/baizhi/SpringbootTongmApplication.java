package com.baizhi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

/**
 * @author 14046
 */
@SpringBootApplication
@MapperScan("com.baizhi.mapper")
public class SpringbootTongmApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringbootTongmApplication.class, args);
    }
}
