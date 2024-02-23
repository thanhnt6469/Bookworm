package main.java.entity;

public class AccountEntity {
	private long id;
	private String user;
	private String pass;
	private int isSell; //có phải người bán?
	private int isAdmin; //có phải admin?
	
	public AccountEntity() {
	}

	public AccountEntity(long id, String user, String pass, int isSell, int isAdmin) {
		super();
		this.id = id;
		this.user = user;
		this.pass = pass;
		this.isSell = isSell;
		this.isAdmin = isAdmin;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getIsSell() {
		return isSell;
	}

	public void setIsSell(int isSell) {
		this.isSell = isSell;
	}

	public int getIsAdmin() {
		return isAdmin;
	}

	public void setIsAdmin(int isAdmin) {
		this.isAdmin = isAdmin;
	}

	@Override
	public String toString() {
		return "AccountEntity [id=" + id + ", user=" + user + ", pass=" + pass + ", isSell=" + isSell + ", isAdmin="
				+ isAdmin + "]";
	}
	
	
}
