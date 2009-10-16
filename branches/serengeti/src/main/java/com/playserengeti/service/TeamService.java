package com.playserengeti.service;

import java.util.Collection;

import com.playserengeti.dao.MembershipDao;
import com.playserengeti.dao.TeamDao;
import com.playserengeti.domain.Membership;
import com.playserengeti.domain.Team;

/**
 * Service for operations related to teams.
 */
public class TeamService {

    private TeamDao teamDao;
    private MembershipDao membershipDao;

    /**
     * Constructor.  Sets the dao.
     * @param TeamDao
     */
    public TeamService(TeamDao TeamDao, MembershipDao membershipDao) {
        this.teamDao = TeamDao;
        this.membershipDao = membershipDao;
    }

    /**
     * Returns the team specified by the given id.
     * @param id
     * @return
     */
    public Team getTeamById(Integer id) {
        return teamDao.getTeamById(id);
    }

    /**
     * Writes the given team to persistent storage. If the given team has a null
     * id, a team is created in persistent storage. If the id is not null, and a
     * team with that id exists, the team in persistent storage will be updated
     * with the fields in the argument. If the id is not null, but no such team
     * with that id exists, then throws some kind of exception. (TODO)
     */
    public void saveTeam(Team team) {
		if (team.getId() == null) {
			teamDao.insertTeam(team);
		} else {
			teamDao.updateTeam(team);
		}    }

    /**
     * Deletes the team with the given id from persistent storage. If no such
     * team exists, throws an IllegalArgumentException.
     */
    public void deleteTeam(Integer id) {
        teamDao.deleteTeam(id);
    }
    
    /**
     * Returns a collection of all teams in the database.
     * @return
     */
    public Collection<Team> getAllTeams() {
    	return teamDao.getAllTeams();
    }
    
    public void saveMembership(Membership m) {
    	if(m.getMembershipId() == null) {
    		membershipDao.insertMembership(m);
    	}
    	else {
    		membershipDao.updateMembership(m);
    	}
    }
    
    public void deleteMembership(Integer id) {
    	membershipDao.deleteMembership(id);
    }
    
    public Collection<Membership> getAllMemberships() {
    	return membershipDao.getAllMemberships();
    }
    
    public Membership getMembershipById(Integer id) {
    	return membershipDao.getMembershipById(id);
    }
    
    public Collection<Membership> getMembershipsByTeam(Integer id) {
    	return membershipDao.getMembershipsByTeam(id);
    }
    
    public Collection<Membership> getMembershipsByUser(Integer id) {
    	return membershipDao.getMembershipsByUser(id);
    }
}
