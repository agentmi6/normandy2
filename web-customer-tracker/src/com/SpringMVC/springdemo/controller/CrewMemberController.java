package com.SpringMVC.springdemo.controller;

import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SpringMVC.springdemo.entity.Normandycrew;
import com.SpringMVC.springdemo.service.CrewMemberService;

@Controller
@RequestMapping("/normandy")
public class CrewMemberController {

	@Autowired
	private CrewMemberService crewMemberService;	
	
	@GetMapping("/crewmembers")
	public String listCrewMembers(Model theModel){
		
		List<Normandycrew> crewMembers = crewMemberService.getCrewMembers(); 		
		
		theModel.addAttribute("members", crewMembers);
		
		return "list-crewMembers";
	}
	
	@GetMapping("/memberAddForm")
	public String memberAddForm(Model theModel){
		Normandycrew member = new Normandycrew();
		
		theModel.addAttribute("member", member);
		
		return "crewMember-form";
	}
	
	
	/// Test action for adding crew members to Normandy
	@PostMapping("/addmember")
	public String addMember(@ModelAttribute("member") Normandycrew member){
		
		crewMemberService.addCrewMember(member);
		
		return "redirect:/normandy/crewmembers";
	}
}
