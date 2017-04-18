package mypackage;

import java.security.SecureRandom;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class admin {
	static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
	static SecureRandom rnd = new SecureRandom();

	static String randomString( int len ){
	   StringBuilder sb = new StringBuilder( len );
	   for( int i = 0; i < len; i++ ) 
	      sb.append( AB.charAt( rnd.nextInt(AB.length()) ) );
	   return sb.toString();
	}

	 public static String[] addMess (String name , String designation , String mess) {
		 Connection con=Jdbc.getCon();
		 PreparedStatement ps;
		 String x="select count(*) from MessWorker";
		 int p=Jdbc.getPrimaryKey(x);
		 System.out.print(p);
		 String id="Mess",t=String.valueOf(p+1);
		 id=id+t;
		 String pw=randomString(10);
		 try {
			 ps = con.prepareStatement("insert into MessLogin values(?,?)");
			 ps.setString(1, id);
			 ps.setString(2, pw);
			 
//			 System.out.println(id+" "+pw);
			 int status=ps.executeUpdate();
		 }
		 catch (SQLException e) {
			 System.out.println("SQL Exception while adding messworker Detail");
		 }
		 try {
			 ps = con.prepareStatement("insert into MessWorker values(?,?,?,?)");
			 ps.setString(1, id);
			 ps.setString(2, name);
			 ps.setString(3, designation);
			 ps.setString(4, mess);
			 
			 System.out.println(id+" "+name+" "+designation+" "+mess);
			 int status=ps.executeUpdate();
			 System.out.println("LOL");
		 }
		 catch (SQLException e) {
			 System.out.println("SQL Exception while adding Messworker Detail");
		 }
		 String ret[]=new String[] {id,pw};
		 return ret;
	 }
	 
	 public static String[] addBus (String name , String designation ) {
		 Connection con=Jdbc.getCon();
		 PreparedStatement ps;
		 String x="select count(*) from BusWorker";
		 int p=Jdbc.getPrimaryKey(x);
		 String id="Bus",t=String.valueOf(p+1);
		 id=id+t;
		 String pw=randomString(10);
		 try {
			 ps = con.prepareStatement("insert into BusWorker values(?,?,?)");
			 ps.setString(1, id);
			 ps.setString(2, name);
			 ps.setString(3, designation);
			 
			 int status=ps.executeUpdate();
		 }
		 catch (SQLException e) {
			 System.out.println("SQL Exception while adding busworker Detail");
		 }
		 
		 try {
			 ps = con.prepareStatement("insert into BusLogin values(?,?)");
			 ps.setString(1, id);
			 ps.setString(2, pw);
			 
			 int status=ps.executeUpdate();
		 }
		 catch (SQLException e) {
			 System.out.println("SQL Exception while adding busworker Detail");
		 }
		 String ret[]=new String[] {id,pw};
		 return ret;
	 }

	 public static String[] addOffice (String name , String designation ) {
		 Connection con=Jdbc.getCon();
		 PreparedStatement ps;
		 String x="select count(*) from OfficeWorker";
		 int p=Jdbc.getPrimaryKey(x);
		 String id="Office",t=String.valueOf(p+1);
		 id=id+t;
		 String pw=randomString(10);
		 
		 try {
			 ps = con.prepareStatement("insert into OfficeLogin values(?,?)");
			 ps.setString(1, id);
			 ps.setString(2, pw);
			 
			 int status=ps.executeUpdate();
		 }
		 catch (SQLException e) {
			 System.out.println("SQL Exception while adding officeworker Detail");
		 }
		 try {
			 ps = con.prepareStatement("insert into OfficeWorker values(?,?,?)");
			 ps.setString(1, id);
			 ps.setString(2, name);
			 ps.setString(3, designation);
			 
			 int status=ps.executeUpdate();
		 }
		 catch (SQLException e) {
			 System.out.println("SQL Exception while adding officeworker Detail");
		 }
		 String ret[]=new String[] {id,pw};
		 return ret;
	 }
	 
	 public static String[] addLib (String name , String designation , String desc) {
		 Connection con=Jdbc.getCon();
		 PreparedStatement ps;
		 String x="select count(*) from LibWorker";
		 int p=Jdbc.getPrimaryKey(x);
		 String id="Lib",t=String.valueOf(p+1);
		 id=id+t;
		 String pw=randomString(10);

		 System.out.println(p+1);
		 try {
			 ps = con.prepareStatement("insert into LibWorker values(?,?,?)");
			 ps.setString(1, id);
			 ps.setString(2, name);
			 ps.setString(3, designation);
			 int status=ps.executeUpdate();
		 }
		 catch (SQLException e) {
			 System.out.println("SQL Exception while adding Libworker Detail");
		 }
		 
		 try {
			 ps = con.prepareStatement("insert into LibLogin values(?,?)");
			 ps.setString(1, id);
			 ps.setString(2, pw);
			 
			 int status=ps.executeUpdate();
		 }
		 catch (SQLException e) {
			 System.out.println("SQL Exception while adding Liblogin Detail");
		 }
		 String ret[]=new String[] {id,pw};
		 return ret;
	 }
	 
}
