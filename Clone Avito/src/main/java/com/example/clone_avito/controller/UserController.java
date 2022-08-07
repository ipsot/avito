package com.example.clone_avito.controller;


import com.example.clone_avito.entity.User;
import com.example.clone_avito.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @GetMapping("/login")
    public String login(Principal principal,Model model) {
        model.addAttribute("user",userService.getUserByPrincipal(principal));
        return "login";
    }

    @GetMapping("/profile")
    public String profile(Principal principal,Model model){
        User user=userService.getUserByPrincipal(principal);
        model.addAttribute("user",user);
        return "profile";
    }

    @GetMapping("/registration")
    public String registration(Principal principal, Model model){
        User user=userService.getUserByPrincipal(principal);
        model.addAttribute("user",user);
        return "profile";
    }

    @PostMapping("/registration")
    public String createUser(User user, Model model) {
        if (!userService.createUser(user)){
            model.addAttribute("errorMessage","User with this email" +user.getEmail()+"is exists");
            return "registration";
        }

        return "redirect:/login";
    }

    @GetMapping("/hello")
    public String securityUrl() {
        return "hello";
    }

    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user")User user,Model model,Principal principal){
        model.addAttribute("user",user);
        model.addAttribute("userByPrincipal",userService.getUserByPrincipal(principal));
        model.addAttribute("products",user.getProducts());
        return "user-info";
    }

}
