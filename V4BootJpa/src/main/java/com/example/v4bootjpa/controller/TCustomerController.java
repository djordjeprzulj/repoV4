package com.example.v4bootjpa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.example.v4bootjpa.repository.TCustomerRepository;

@RestController
public class TCustomerController {

	@Autowired
	TCustomerRepository tCustomerRepository;
}
