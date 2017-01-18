package com.SpringMVC.springdemo.crewmemberDAO;

import java.util.List;

import com.SpringMVC.springdemo.entity.Normandycrew;

public interface CrewMemberDAO {
	public List<Normandycrew> getCrewMembers();	
	public void addCrewMember(Normandycrew member);
}
