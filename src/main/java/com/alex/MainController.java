package com.alex;

import com.alex.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

import java.util.List;

@Controller
public class MainController {
    static List<User> users = new ArrayList<>();
    @GetMapping("/")
    public String view(){
        return "index";
    }
    @GetMapping("/test")
    public String test(){
        return "test";
    }
    @GetMapping("/controller")
    public String controller(@RequestParam(value = "name",
            required = false, defaultValue = "stranger")
                                         String name, Model model){
        model.addAttribute("msg", "Hello " + name);
        return "controller";
    }
    @GetMapping("/controller/{name}")
    public String controller2(@PathVariable("name")
                                     String name, Model model){
        model.addAttribute("msg", "Hello " + name);
        return "controller";
    }
    @GetMapping("/raw")
    @ResponseBody
    public String raw(){
        return "Raw data";
    }

    @GetMapping("/users")
    public String getUsers(Model model){
        model.addAttribute("users", users);
        return "/users";
    }
    @GetMapping("/users/new")
    public String getSingUp(){
        return "/sign_up";
    }
    @PostMapping("/users/new")
    public String singUp(@ModelAttribute User user){
        users.add(user);
        return "redirect:/users";
    }
}