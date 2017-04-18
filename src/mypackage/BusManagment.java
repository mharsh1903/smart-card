package mypackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BusManagment{
	public boolean check (String id , String pwd) {
		Connection con=Jdbc.getCon();
		PreparedStatement ps;
		boolean chk=false;
		
		try {
			ps = con.prepareStatement("select * from BusLogin where ID = ? and PWD=?");
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
	
	public int deductBal (String id , int bal ) {
		Connection con=Jdbc.getCon();
		PreparedStatement ps;
		int rem=bal;
		rem-=25;
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
			ps.setString(2,"Bus");
		}
		catch (SQLException e) {
			System.out.println("SQL exception error while updating Transactions\n");
		}
		try {
			ps=con.prepareStatement("insert into BusTransac values(?,?,?,?)");
			ps.setString(1,TID);
			ps.setString(2,id);
			ps.setInt(3, bal-rem);
			ps.setString(2,"Bus Pass");
		}
		catch (SQLException e) {
			System.out.println("SQL exception error while updating Transactions\n");
		}
		return rem;
	}
	public static void setID(String str) {
		Connection con=Jdbc.getCon();
		PreparedStatement ps;
		
		try {
			ps=con.prepareStatement("insert into temp values(?)");
			ps.setString(1,str);
			int status=ps.executeUpdate();
		}
		catch(SQLException E) {
			System.out.println("SQL Exception While adding ID temprrly");
		}	
	}
	public static String getID() {
		
		Connection con=Jdbc.getCon();
		PreparedStatement ps;
		String ret="";
		
		try {
			ps=con.prepareStatement("select * from temp");
			ResultSet rs=ps.executeQuery();
			while (rs.next()) {
				ret=rs.getString(1);
			}
			
		}
		catch(SQLException E) {
			System.out.println("SQL Exception While adding ID temprrly");
		}	
		try {
			ps=con.prepareStatement("delete from temp");
			int status=ps.executeUpdate();
		}
		catch(SQLException E) {
			System.out.println("SQL Exception While adding ID temprrly");
		}	
		return ret;
		
	}
}
