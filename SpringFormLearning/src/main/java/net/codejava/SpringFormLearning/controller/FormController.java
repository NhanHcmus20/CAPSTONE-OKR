package net.codejava.SpringFormLearning.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.codejava.SpringFormLearning.model.Objectives;

@Controller
public class FormController {
	@RequestMapping(value="/form", method = RequestMethod.GET)
	public String viewForm(Model model) {
		Objectives obj = new Objectives();
		model.addAttribute("Objectives", obj);
		return "form";
	}
	
	@RequestMapping(value="/submitForm", method = RequestMethod.POST)
	public String addObjective(@ModelAttribute("Objectives") Objectives obj) {
		System.out.println(obj);
		return "successNotiPage";
	}
}

