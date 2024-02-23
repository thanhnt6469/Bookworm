package main.java.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import main.java.entity.AccountEntity;
import main.java.entity.CategoryEntity;
import main.java.entity.ProductEntity;
import main.java.util.ConnectionUtil;

public class ProductDAO {
	private Connection conn = null;
	private PreparedStatement ps = null;
	protected ResultSet rs = null;
	
	public List<ProductEntity> getAllProduct() {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM product";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public List<CategoryEntity> getAllCategory() {
		List<CategoryEntity> categories = new ArrayList<>();
		String sql = "SELECT * FROM category";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				CategoryEntity category = new CategoryEntity();
				category.setCid(rs.getLong("cid"));
				category.setCname(rs.getString("cname"));
				
				categories.add(category);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return categories;
	}
	
	public List<ProductEntity> getProductByCategory(String cid) {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM product \r\n"
					+ "WHERE categoryID = ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public ProductEntity getProductByID(String id) {
		String sql = "SELECT * FROM product \r\n"
					+ "WHERE id = ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				
				return product;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<ProductEntity> getProductByCategoryID(String id) {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM product\r\n"
					+ "WHERE categoryID = (SELECT categoryID  FROM product WHERE id = ?)";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public List<ProductEntity> searchByName(String txtSearch) {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM product\r\n"
					+ "WHERE title LIKE ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1,"%" + txtSearch + "%");
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public AccountEntity login(String user, String pass) {
		String sql = "SELECT * FROM account\r\n"
					+ "WHERE `user` = ? AND pass = ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				AccountEntity account = new AccountEntity();
				account.setId(rs.getLong("uID"));
				account.setUser(rs.getString("user"));
				account.setPass(rs.getString("pass"));
				account.setIsSell(rs.getInt("isSell"));
				account.setIsAdmin(rs.getInt("isAdmin"));
				
				return account;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}
	
	public AccountEntity checkAccountExist(String user) {
		String sql = "SELECT * FROM account\r\n"
					+ "WHERE `user` = ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				AccountEntity account = new AccountEntity();
				account.setId(rs.getLong("uID"));
				account.setUser(rs.getString("user"));
				account.setPass(rs.getString("pass"));
				account.setIsSell(rs.getInt("isSell"));
				account.setIsAdmin(rs.getInt("isAdmin"));
				
				return account;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}
	
	public void signup(String user, String pass) {
		String sql = "INSERT INTO account (`user`,pass,isSell,isAdmin)\r\n"
					+ "VALUES(?,?,0,0)";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, user);
			ps.setString(2, pass);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	
	public List<ProductEntity> getProductBySellID(long id) {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM product\r\n"
					+ "WHERE sell_ID = ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setLong(1, id);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				product.setCategoryID(rs.getLong("categoryID"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public void deleteProduct(String pid) {
		String sql = "DELETE FROM product\r\n"
					+ "WHERE id = ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, pid);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void insertProduct(String name, String price, String description, String image, String hot, String category, long sellID) {
		String sql = "INSERT INTO product (title,price,description,image,hot,categoryID,sell_ID)\r\n"
					+ "VALUES (?,?,?,?,?,?,?)";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, price);
			ps.setString(3, description);
			ps.setString(4, image);
			ps.setString(5, hot);
			ps.setString(6, category);
			ps.setLong(7, sellID);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void editProduct(String name, String price, String description, String image, String hot, String category, String id) {
		String sql = "UPDATE product\r\n"
				+ "SET title = ?,\r\n"
				+ "	price = ?,\r\n"
				+ "	description = ?,\r\n"
				+ "	image = ?,\r\n"
				+ "	hot = ?,\r\n"
				+ "	categoryID = ?\r\n"
				+ "WHERE id = ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, price);
			ps.setString(3, description);
			ps.setString(4, image);
			ps.setString(5, hot);
			ps.setString(6, category);
			ps.setString(7, id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public List<ProductEntity> pagingBySellID(long id, int index) {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM \r\n"
					+ "	(SELECT *, ROW_NUMBER() OVER (ORDER BY sell_ID) AS row_num\r\n"
					+ "	 FROM product WHERE sell_ID = ?) AS numbered_rows\r\n"
					+ "WHERE row_num > ? LIMIT 4;";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setLong(1, id);
			ps.setInt(2, (index-1)*4);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				product.setCategoryID(rs.getLong("categoryID"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public List<ProductEntity> pagingAllProduct(int index) {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM \r\n"
					+ "	(SELECT *, ROW_NUMBER() OVER (ORDER BY id) AS row_num\r\n"
					+ "	 FROM product) AS numbered_rows\r\n"
					+ "WHERE row_num > ? LIMIT 15;";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, (index-1)*15);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				product.setCategoryID(rs.getLong("categoryID"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public List<ProductEntity> getNewProduct() {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM product\r\n"
					+ "ORDER BY id DESC\r\n"
					+ "LIMIT 4";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public List<ProductEntity> sortNameASC() {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM product\r\n"
					+ "ORDER BY title ASC";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public List<ProductEntity> pagingAllProductNameASC(int index) {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM \r\n"
					+ "	(SELECT *, ROW_NUMBER() OVER (ORDER BY title ASC) AS row_num\r\n"
					+ "	 FROM product) AS numbered_rows\r\n"
					+ "WHERE row_num > ? LIMIT 15;";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, (index-1)*15);
			
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				product.setCategoryID(rs.getLong("categoryID"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public List<ProductEntity> sortNameDESC() {
		List<ProductEntity> products = new ArrayList<>();
		String sql = "SELECT * FROM product\r\n"
					+ "ORDER BY title DESC";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				
				products.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return products;
	}
	
	public ProductEntity getProductById(int id) {
		String sql = "SELECT * FROM product \r\n"
					+ "WHERE id = ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				ProductEntity product = new ProductEntity();
				product.setId(rs.getLong("id"));
				product.setTitle(rs.getString("title"));
				product.setPrice(rs.getLong("price"));
				product.setDescription(rs.getString("description"));
				product.setImage(rs.getString("image"));
				product.setHot(rs.getString("hot"));
				
				return product;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public List<AccountEntity> getAccountBySellID() {
		List<AccountEntity> accounts = new ArrayList<>();
		String sql = "SELECT uID, `user` FROM account\r\n"
					+ "WHERE isSell = 1 AND isAdmin = 0";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			
			rs = ps.executeQuery();
			
			while (rs.next()) {
				AccountEntity account = new AccountEntity();
				account.setId(rs.getLong("uID"));
				account.setUser(rs.getString("user"));
				
				accounts.add(account);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return accounts;
	}
	
	public List<AccountEntity> pagingAccountBySellID(int index) {
		List<AccountEntity> accounts = new ArrayList<>();
		String sql = "SELECT * FROM \r\n"
					+ "	(SELECT uID, `user`, ROW_NUMBER() OVER (ORDER BY uID) AS row_num\r\n"
					+ "	 FROM account WHERE isSell = 1 AND isAdmin = 0) AS numbered_rows\r\n"
					+ "WHERE row_num > ? LIMIT 4;";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, (index-1)*4);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				AccountEntity account = new AccountEntity();
				account.setId(rs.getLong("uID"));
				account.setUser(rs.getString("user"));
				
				accounts.add(account);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return accounts;
	}
	
	public void deleteAccount(String pid) {
		String sql = "DELETE FROM account\r\n"
					+ "WHERE uID = ?";
		try {
			conn = ConnectionUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, pid);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void main(String[] args) {
		ProductDAO productDAO = new ProductDAO();
//		List<ProductEntity> products = productDAO.getAllProduct();
		List<ProductEntity> products = productDAO.pagingAllProductNameASC(1);
		List<CategoryEntity> categories = productDAO.getAllCategory();
		List<AccountEntity> accounts = productDAO.getAccountBySellID();
//		List<ProductEntity> products = productDAO.pagingBySellID(2,1);
//		List<ProductEntity> products = productDAO.getProductBySellID(1);
//		List<ProductEntity> products = productDAO.getProductByCategoryID("2");
		for (ProductEntity product : products) {
			System.out.println(product);
		}
		for (AccountEntity product : accounts) {
			System.out.println(product);
		}
		for (CategoryEntity category : categories) {
			System.out.println(category);
		}
	}
	
}
