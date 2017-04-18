package mypackage;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement; 
import java.util.*;

import mypackage.Jdbc;
class Jdbc {  
	public static Connection con;
	static {
		try{  
			Class.forName("com.mysql.jdbc.Driver");  
			con=DriverManager.getConnection(  
			"jdbc:mysql://localhost:3306/CollegeCard","root","744574"); 
			//?autReconnect=true&useSSL=false
			//here sonoo is database name, root is username and password  
			//Statement stmt=con.createStatement();  
			//ResultSet rs=stmt.executeQuery("select * from emp");  
			//while(rs.next())  
			//System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));
			System.out.println("harsh");
		}catch (ClassNotFoundException e) {
			System.out.println("Err\n");
		}
		catch(SQLException e){
			System.out.println("Hello\n");
		}
	}
//	public static void main(String args[]){  
//		try{  
//			Class.forName("com.mysql.jdbc.Driver");  
//			con=DriverManager.getConnection(  
//			"jdbc:mysql://localhost:3306/CollegeCard?autoReconnect=true&useSSL=false","root","oopproject");  
//			System.out.println("Piku\n");
//			//here sonoo is database name, root is username and password  
//			//Statement stmt=con.createStatement();  
//			//ResultSet rs=stmt.executeQuery("select * from emp");  
//			//while(rs.next())  
//			//System.out.println(rs.getInt(1)+"  "+rs.getString(2)+"  "+rs.getString(3));
//			//System.out.println("harsh");
//			con.close();  
//		}catch(Exception e){ ;}  
//		
//	}
	public static Connection getCon() {
		return con;
	}
	public static int getPrimaryKey(String p){
		int nextvalue=0;
		Connection con=Jdbc.getCon();
		PreparedStatement ps2;
		try {
		
			ps2=con.prepareStatement(p);
			
			ResultSet rs=ps2.executeQuery();
			rs.next();
			nextvalue=rs.getInt(1);
			
		} 
		catch (SQLException e) {
			e.printStackTrace();
		}
		return nextvalue;

	}
}  