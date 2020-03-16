package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;

@Controller
public class TestController {

    @GetMapping("/")
    public String test(Model model){
        model.addAttribute("test", "我是controller传来的数据");
        return "index";
    }
}
