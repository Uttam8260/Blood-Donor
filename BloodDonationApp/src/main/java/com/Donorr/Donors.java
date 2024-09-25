package com.Donorr;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Donors {
	@Id
	Long number;
	String name;
	Long age;
	String bgroup;
	String address;
	String email;
	String gender;

	public Donors() {
		super();
	}

	public Donors(Long number, String name, Long age, String bgroup, String address, String email, String gender) {
		super();
		this.number = number;
		this.name = name;
		this.age = age;
		this.bgroup = bgroup;
		this.address = address;
		this.email = email;
		this.gender = gender;
	}
	
	public Long getNumber() {
		return number;
	}

	public void setNumber(Long number) {
		this.number = number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getAge() {
		return age;
	}

	public void setAge(Long age) {
		this.age = age;
	}

	public String getGroup() {
		return bgroup;
	}

	public void setGroup(String group) {
		this.bgroup = group;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
