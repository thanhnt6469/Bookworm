package main.java.entity;

public class CategoryEntity {
	private long cid;
	private String cname;
	
	public CategoryEntity() {
	}
	
	public CategoryEntity(long cid, String cname) {
		super();
		this.cid = cid;
		this.cname = cname;
	}

	public long getCid() {
		return cid;
	}

	public void setCid(long cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}

	@Override
	public String toString() {
		return "CategoryEntity [cid=" + cid + ", cname=" + cname + "]";
	}

	public void setCname(String cname) {
		this.cname = cname;
	}
}
