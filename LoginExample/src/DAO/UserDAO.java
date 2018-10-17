package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import model.User;

public enum UserDAO {
	
	instance;

	public Connection getConnection() throws SQLException, ClassNotFoundException{
		try {
			Connection con;
			Class.forName("org.hsqldb.jdbcDriver");
			con = DriverManager.getConnection(
			"jdbc:hsqldb:hsql://localhost/oneDB","sa", "");
			return con;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public void save(User user) throws SQLException, ClassNotFoundException {
		Connection con = getConnection();
		
		Statement stmt = con.createStatement();
		stmt.executeUpdate("INSERT INTO USER(NAME, PASSWORD, ADDRESS) "
				+ "VALUES ('" + user.getTheName() + "','" 
				+ user.getThePassword() + "','" + user.getTheAddress() + "')");
		stmt.close();
		con.close();
	}
	
	public User checkLogin(String name, String password) throws ClassNotFoundException, SQLException {
		Connection connection = getConnection();
		User user = null;
		
		try {
			PreparedStatement psmt = connection.prepareStatement("SELECT * FROM USER WHERE"
					+ " NAME = ? AND PASSWORD = ?");
			psmt.setString(1, name);
			psmt.setString(2, password);
			ResultSet rs = psmt.executeQuery();
			
			if(rs.next()) {
				user = new User(rs.getInt("id"), rs.getString("name"), 
						rs.getString("password"), rs.getString("address"));
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
}
