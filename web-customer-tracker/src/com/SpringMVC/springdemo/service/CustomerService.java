package com.SpringMVC.springdemo.service;

import java.util.List;

import com.SpringMVC.springdemo.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer customer);
}
