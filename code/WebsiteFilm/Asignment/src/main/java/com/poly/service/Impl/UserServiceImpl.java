package com.poly.service.Impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.poly.dao.UserDAO;
import com.poly.dao.impl.UserDAOImpl;
import com.poly.dto.UserDto;
import com.poly.entity.User;
import com.poly.service.UserService;

public class UserServiceImpl implements UserService{

	private UserDAO dao;
	
	public UserServiceImpl() {
		dao = new UserDAOImpl();
	}
	
	@Override
	public User findByid(Integer id) {
		// TODO Auto-generated method stub
		return dao.findByid(id);
	}

	@Override
	public User findByEmail(String email) {
		// TODO Auto-generated method stub
		return dao.findByEmail(email);
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return dao.findByUsername(username);
	}

	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		return dao.findbyUsernameAndPassword(username, password);
	}

	@Override
	public User resetPassword(String email) {
		User exisUser = findByEmail(email);
		if(exisUser != null) {
			String newPass = String.valueOf((int) (Math.random() * ((9999 - 1000) + 1)) + 1000);
			exisUser.setPassword(newPass);
			return dao.update(exisUser);
		}
		return null;
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return dao.findAll();
	}

	@Override
	public List<User> findAll(int PageNumber, int PageSize) {
		// TODO Auto-generated method stub
		return dao.findAll(PageNumber, PageSize);
	}

	@Override
	public User register(String username, String password, String email) {
		User newuser = new User();
		newuser.setUsername(username);
		newuser.setPassword(password);
		newuser.setEmail(email);
		newuser.setIsAdmin(Boolean.FALSE);
		newuser.setIsActive(Boolean.TRUE);
		System.out.println( "--------------------" + username ) ;
		return dao.create(newuser);
	}

	@Override
	public User update(User entity) {
		return dao.update(entity);
	}

	@Override
	public User delete(String username) {
		User user = dao.findByUsername(username);
		user.setIsActive(Boolean.FALSE);
		return dao.update(user);
	}

	@Override
	public List<UserDto> findUsersLikedVideoByVideoHref(String href) {
		Map<String, Object> params = new HashMap<>();
		params.put("videoHref", href);
		List<User> users = dao.findUsersLikedVideoByVideoHref(params);
		List<UserDto> result = new ArrayList<>();
		users.forEach(user -> {
			UserDto dto = new UserDto();
			dto.setUsername(user.getUsername());
			dto.setEmail(user.getEmail());
			result.add(dto);
		});
		return result;
	}

}
