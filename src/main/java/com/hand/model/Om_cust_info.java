package com.hand.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Repository;

@Repository
@Entity
@Table(name="om_customers_info")
public class Om_cust_info {
	private int cust_id;
	private String customer_code;
	private String customer_name;
	private String type;
	private String group_company;
	private String corporation;
	private int org_id;
	private int discount_id;
	public Om_cust_info() {
	}
	public Om_cust_info(int cust_id, String customer_code, String customer_name, String type, String group_company,
			String corporation, int org_id, int discount_id) {
		super();
		this.cust_id = cust_id;
		this.customer_code = customer_code;
		this.customer_name = customer_name;
		this.type = type;
		this.group_company = group_company;
		this.corporation = corporation;
		this.org_id = org_id;
		this.discount_id = discount_id;
	}
	
	
	@Id  
	@GeneratedValue(strategy = GenerationType.AUTO) 
	public int getCust_id() {
		return cust_id;
	}
	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}
	
	@Column(name="customer_code")
	public String getCustomer_code() {
		return customer_code;
	}
	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}
	
	@Column(name="customter_name")
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	
	@Column(name="type")
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
	@Column(name="group_company")
	public String getGroup_company() {
		return group_company;
	}
	public void setGroup_company(String group_company) {
		this.group_company = group_company;
	}
	
	@Column(name="corporation")
	public String getCorporation() {
		return corporation;
	}
	public void setCorporation(String corporation) {
		this.corporation = corporation;
	}
	
	@Column(name="org_id")
	public int getOrg_id() {
		return org_id;
	}
	public void setOrg_id(int org_id) {
		this.org_id = org_id;
	}
	
	@Column(name="Discount_id")
	public int getDiscount_id() {
		return discount_id;
	}
	public void setDiscount_id(int discount_id) {
		this.discount_id = discount_id;
	}


}
