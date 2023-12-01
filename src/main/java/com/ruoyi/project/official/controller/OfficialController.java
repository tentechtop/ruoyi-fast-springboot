package com.ruoyi.project.official.controller;

import com.ruoyi.framework.web.controller.BaseController;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/official/page")
public class OfficialController extends BaseController {



    @GetMapping("/test")
    public String test(){


        return "你好";
    }



}
