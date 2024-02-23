package main.java.entity;

import java.util.List;

public class OrderEntity {
	private int id;
	private AccountEntity customer;
	private List<ItemEntity> items;
	private int status;
	private double total;

	public OrderEntity() {
	}

	public OrderEntity(int id, AccountEntity customer, List<ItemEntity> items, int status, double total) {
		super();
		this.id = id;
		this.customer = customer;
		this.items = items;
		this.status = status;
		this.total = total;
	}

	public int getId() {
		return id;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public void setId(int id) {
		this.id = id;
	}

	public AccountEntity getCustomer() {
		return customer;
	}

	public void setCustomer(AccountEntity customer) {
		this.customer = customer;
	}

	public List<ItemEntity> getItems() {
		return items;
	}

	public void setItems(List<ItemEntity> items) {
		this.items = items;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

}
