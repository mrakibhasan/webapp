package com.demo.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.demo.model.User;


public class UserDao {
	Connection conn;

	// database Connection
	public UserDao() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/dec2016", "root",
					"Raha_634709");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
  //Retrieve all data from database
	public List<User> getAllUser(){
		List<User> list=new ArrayList<User>();
		try{
			PreparedStatement ps=conn.prepareStatement("select * from users");
			ResultSet rs=ps.executeQuery();
			while (rs.next()){
				User user=new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPasword(rs.getString("pasword"));
				list.add(user);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
		
	}
	//insert user
	public int insertUser(User user){
		int x=0;
		try{
			PreparedStatement ps=conn.prepareStatement("insert into users(username,pasword)values(?,?)");
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPasword());
			x=ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return x;
	}
	//delete user by id
	public int deleteUser(int id) {
		int x = 0;
		try{
			PreparedStatement ps = conn.prepareStatement("delete from users where id=?");
			ps.setInt(1, id);
			x = ps.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return x;
	}
	
	//update the user
	public  int update(User u){  
	    int status=0;  
	    try{  
	        
	        PreparedStatement ps=conn.prepareStatement("update users set username=?,pasword=? where id=?");  
	        ps.setString(1,u.getUsername());  
	        ps.setString(2,u.getPasword());  
	        ps.setInt(3,u.getId());  
	        status=ps.executeUpdate();  
	        
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}  
}
