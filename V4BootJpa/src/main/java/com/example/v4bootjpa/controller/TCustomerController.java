package com.example.v4bootjpa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.v4bootjpa.model.TCustomer;
import com.example.v4bootjpa.repository.TCustomerRepository;

@RestController
public class TCustomerController {

	@Autowired
	TCustomerRepository tCustomerRepository;
	
	@RequestMapping("/allCustomers")
	public List<TCustomer> readAll() {
		return tCustomerRepository.findAll();
	}
}
