package mypackage;
import java.sql.*;
public class RegisterStudent {
	static int status=0;
	//int accountno=1;
	public static int register(String name , long phone , String email , String gen , String add , String maxq){
		//public static int register(String email,String password,String gender,String country,String name){
	
		Connection con=Jdbc.getCon();
		PreparedStatement ps;
		String x="select CollegeCard.StudentInfo from dual";
		int p=Jdbc.getPrimaryKey(x);
		String s="USR",t=String.valueOf(p+1);
		s=s+t;
		try {
			ps = con.prepareStatement("Insert into StudentInfo values(?,?,?,?,?,?,?)");
			int a=0;
			if(gen.equals("male"))
				a=1;
		 	ps.setString(1,s);
		    ps.setString(2,name);
			ps.setLong(3,phone);
			ps.setString(4,email);
			ps.setString(5,add);
			ps.setInt(6,a);
			ps.setString(7,maxq);
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		/*Adding password and studentID to StudentLogin table*/
		try {
			ps = con.prepareStatement("Insert into StudentLogin values(?,?)");
			ps.setString(1,s);
			ps.setString(2,s);
		}
		catch (SQLException e) {
			System.out.println("Found Exception While adding password and ID of student\n");
		}
		
		/*Adding balance as 0 to StudentBAL table*/
		try {
			ps = con.prepareStatement("Insert into StudentBAL values(?,?)");
			int bl=0;
			ps.setString(1,s);
			ps.setInt(2,bl);
		}
		catch (SQLException e) {
			System.out.println("Found Exception While adding Balance and ID of student\n");
		}
			
		return status;
	}
	
	
}
