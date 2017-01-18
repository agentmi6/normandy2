package com.SpringMVC.springdemo.crewmemberDAO;

import java.util.List;

import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.SpringMVC.springdemo.entity.Normandycrew;

@Repository
public class CrewMemberDAOImpl implements CrewMemberDAO {

	@Autowired	
	private SessionFactory sessionFactory;
	
	@Override
	public List<Normandycrew> getCrewMembers() {
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Normandycrew> theQuery = currentSession.createQuery("from Normandycrew", Normandycrew.class);
		
		List<Normandycrew> crewMembers = theQuery.getResultList();
		
		return crewMembers;
		
	}

	@Override
	public void addCrewMember(Normandycrew member) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.save(member);		
	}
}
