package com.company.service;

import com.company.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Arrays;
import java.util.List;

@Service
public class UserDetailServiceImpl implements UserDetailsService {


    @Autowired
    private UserService userService;

    @Override
    public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
        UserDto customUser = userService.findUserByLogin(login);
        if (customUser == null) {
            throw new UsernameNotFoundException(login + " not found");
        }
        List<GrantedAuthority> roles = Arrays.asList(new SimpleGrantedAuthority(customUser.getRole().toString()));
        return new User(customUser.getLogin(), customUser.getPassword(), roles);
    }
}

