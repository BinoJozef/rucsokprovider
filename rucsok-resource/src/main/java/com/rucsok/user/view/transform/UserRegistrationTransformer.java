package com.rucsok.user.view.transform;

import com.rucsok.user.domain.User;
import com.rucsok.user.domain.UserRegistration;
import com.rucsok.user.service.exception.NoUserGivenException;
import com.rucsok.user.view.model.UserProfileView;
import com.rucsok.user.view.model.UserRegistrationError;
import com.rucsok.user.view.model.UserRegistrationRequest;
import com.rucsok.user.view.model.UserRegistrationResponse;

public class UserRegistrationTransformer {

	public UserRegistration transformToRegistration(UserRegistrationRequest request) {
		if (request == null) {
			throw new IllegalArgumentException();
		}
		return new UserRegistration(request.getEmail(), request.getUsername(), request.getPassword());
	}

	public UserRegistrationResponse transformToResponse(User user) {
		if (user == null) {
			throw new IllegalArgumentException();
		}
		UserProfileView userView = new UserProfileView(user.getUsername(), user.getEmail());
		return new UserRegistrationResponse(userView, null);
	}

	public UserRegistrationResponse transformToResponse(RuntimeException exception) {
		return new UserRegistrationResponse(null, new UserRegistrationError(exception.getMessage()));
	}

	
	
	
}