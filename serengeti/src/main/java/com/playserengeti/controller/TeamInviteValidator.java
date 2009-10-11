package com.playserengeti.controller;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

public class TeamInviteValidator implements Validator {
	
	@Override
	public boolean supports(Class c) {
		return TeamInviteCommand.class.equals(c);
	}

	@Override
	public void validate(Object object, Errors errors) {
		TeamInviteCommand c = TeamInviteCommand.class.cast(object);

		/* Doesn't do anything. */
	}
}