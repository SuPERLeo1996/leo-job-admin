package com.xxl.job.admin.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @ClassName TestController.java
 * @Author gonglinjie
 * @Description
 * @Date 2021/4/13
 */
@RestController
public class TestController {

    Logger logger = LoggerFactory.getLogger(TestController.class);

    @GetMapping("/test")
    public String test() {
        logger.info("test");
        return "ok";
    }

    @GetMapping("")
    public String home() {
        logger.info("home");
        return "ok";
    }

}
