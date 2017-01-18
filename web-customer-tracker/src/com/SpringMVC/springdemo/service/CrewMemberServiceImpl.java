package com.SpringMVC.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.SpringMVC.springdemo.crewmemberDAO.CrewMemberDAO;
import com.SpringMVC.springdemo.entity.Normandycrew;

@Service
public class CrewMemberServiceImpl implements CrewMemberService {

	@Autowired
	private CrewMemberDAO crewMemberDAO;
	
	@Override
	@Transactional
	public List<Normandycrew> getCrewMembers() {
		return crewMemberDAO.getCrewMembers();
	}

	@Override
	@Transactional
	public void addCrewMember(Normandycrew member) {
		crewMemberDAO.addCrewMember(member);
		
	}

}
