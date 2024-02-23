package main.java.entity;

public class ProductEntity {

	private long id;
	private String title;
	private long price;
	private String description;
	private String image;
	private String hot;
	private long categoryID;
	private int row_num;
	
	public long getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(long categoryID) {
		this.categoryID = categoryID;
	}

	
	

	public ProductEntity() {
		
	}

	public long getId() {
		return id;
	}	

	@Override
	public String toString() {
		return "ProductEntity [id=" + id + ", title=" + title + ", price=" + price + ", description=" + description
				+ ", image=" + image + ", hot=" + hot + ", categoryID=" + categoryID + ", row_num=" + row_num + "]";
	}

	public int getRow_num() {
		return row_num;
	}

	public void setRow_num(int row_num) {
		this.row_num = row_num;
	}

	public ProductEntity(long id, String title, long price, String description, String image, String hot,
			long categoryID, int row_num) {
		super();
		this.id = id;
		this.title = title;
		this.price = price;
		this.description = description;
		this.image = image;
		this.hot = hot;
		this.categoryID = categoryID;
		this.row_num = row_num;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getHot() {
		return hot;
	}

	public void setHot(String hot) {
		this.hot = hot;
	}
	
}
