package main.java.entity;

public class ItemEntity {
	private int id;
	private ProductEntity book;
	private int quantity;
	private long price;
	
	public ItemEntity() {
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ProductEntity getBook() {
		return book;
	}

	public void setBook(ProductEntity book) {
		this.book = book;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public ItemEntity(int id, ProductEntity book, int quantity, long price) {
		super();
		this.id = id;
		this.book = book;
		this.quantity = quantity;
		this.price = price;
	}

	
	
}
