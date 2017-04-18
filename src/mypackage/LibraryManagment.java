package mypackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LibraryManagment{
	public boolean check (String id , String pwd) {
		Connection con=Jdbc.getCon();
		PreparedStatement ps;
		boolean chk=false;
		
		try {
			ps = con.prepareStatement("select * from LibLogin where ID = ? and PWD=?");
			ps.setString(1,id);
			ps.setString(2,pwd);
			
			ResultSet rs=ps.executeQuery();
			chk=rs.next();
		}
		catch(SQLException e) {
			System.out.println("SQL Exception while trying to login");
		}
		return chk;
	}
	
	public static int retBal (String id) {
		Connection con=Jdbc.getCon();
		PreparedStatement ps;
		int ret=0;
		
		try {
			ps=con.prepareStatement("select BAL from StudentBAL where StudentID = ?");
			ps.setString(1,id);
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				ret=rs.getInt("BAL");
				break;
			}
		}
		catch(SQLException e) {
			System.out.println("SQL Exception While quering about balance of student\n");
		}
		return ret;
	}
	
	public static int deductBal (String id , int bal , int days) {
		Connection con=Jdbc.getCon();
		PreparedStatement ps;
		int rem=bal;
		
		if(days<=15) return rem;
		int cost=1,previ=1;
		while (days>0) {
			if(days<=15) {
				rem-=(days*cost);
				break;
			}
			days-=15;
			rem-=(15*cost);
			int val=cost;
			cost+=previ;
			previ=val;
		}
		
		if(rem<0) return -1;
		
		try {
			ps=con.prepareStatement("update StudentBAL set StudentID=?,BAL=? where StudentID=?");
			ps.setString(1,id);
			ps.setInt(2,rem);
			ps.setString(3,id);
		}
		catch (SQLException e) {
			System.out.println("SQL exception error while updating cost\n");
		}
		String x="select CollegeCard.Transactions from dual";
		int p=Jdbc.getPrimaryKey(x);
		String TID=String.valueOf(p+1);
		try {
			ps=con.prepareStatement("insert into Transactions values(?,?)");
			ps.setString(1,TID);
			ps.setString(2,"Library");
		}
		catch (SQLException e) {
			System.out.println("SQL exception error while updating Transactions\n");
		}
		try {
			ps=con.prepareStatement("insert into LibraryTransac values(?,?,?,?)");
			ps.setString(1,TID);
			ps.setString(2,id);
			ps.setInt(3, bal-rem);
			ps.setString(2,"Late Fine");
		}
		catch (SQLException e) {
			System.out.println("SQL exception error while updating Transactions\n");
		}
		return rem;
	}
}
