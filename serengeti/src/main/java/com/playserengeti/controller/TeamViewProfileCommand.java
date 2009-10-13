package com.playserengeti.controller;

/**
 * The commander for viewing a team's profile.
 * @author Chris
 *
 */
public class TeamViewProfileCommand {

	private Integer teamId;
	private Integer userId;

	/**
	 * Returns the team's id.
	 * @return
	 */
    public Integer getTeamId() {
		return teamId;
	}

    /**
     * Sets the team's id.
     * @param teamId
     */
	public void setTeamId(Integer teamId) {
		this.teamId = teamId;
	}

	/**
	 * Gets the current user's id.
	 * @return
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * Sets the current user's id.
	 * @param userId
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
}
