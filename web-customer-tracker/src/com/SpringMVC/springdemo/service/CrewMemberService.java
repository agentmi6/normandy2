package com.SpringMVC.springdemo.service;

import java.util.List;

import com.SpringMVC.springdemo.entity.Normandycrew;


public interface CrewMemberService {
	public List<Normandycrew> getCrewMembers();

	public void addCrewMember(Normandycrew member);
}
