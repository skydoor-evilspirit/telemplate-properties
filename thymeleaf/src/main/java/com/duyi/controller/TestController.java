package com.duyi.controller;

import com.duyi.domain.People;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;

@Controller
public class TestController {

    @GetMapping("/welcome")
    public String test1(Model model){
        People people = new People("张三",20);
        model.addAttribute("people", people);

        People zk = new People("张狂", 18);
        People stdx = new People("司徒冬夏", 26);
        People xyd = new People("小雨点", 16);
        ArrayList<People> list = new ArrayList<>();
        list.add(zk);
        list.add(stdx);
        list.add(xyd);
        model.addAttribute("list", list);
        return "index";
    }
    @GetMapping("/login")
    public String test2(){
        return "login";
    }
    @PostMapping("/login")
    public String test3(@RequestParam String username,@RequestParam String password){
        System.out.println(username);
        System.out.println(password);
        return "redirect:/welcome";
    }
    @GetMapping("/inner")
    public String test4(Model model){
        People people = new People("米九", 18);
        model.addAttribute("people", people);
        return "innerHtml";
    }






}
