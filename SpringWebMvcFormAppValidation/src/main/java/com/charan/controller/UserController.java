package com.charan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.charan.binding.User;

import jakarta.validation.Valid;
@Controller
public class UserController {
	@GetMapping("/")
	public String getForm(Model model) {
		User u=new User();
		model.addAttribute("user", u);
		return "index";
	}
	@PostMapping("/register")
	public String handleRegistrationBtn(@Valid User userForm,BindingResult result,Model model) {
		if(result.hasErrors())
			return "index";
		System.out.println(userForm);
		model.addAttribute("msg","Your Registration is Successfull");
		return "success";
	}

}
