package DBUtilClass;


import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import doctorClass.doctor;



public class doctorDBUtil {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	public static List<doctor> validate1(String doctorid,String docname){
		    ArrayList<doctor> doc1=new ArrayList<>();
		   
		    
		    try {
		    	
		    	con = DBConnection.getConnection();
		    	 stmt = con.createStatement();
		    	
		    	String sql="select * from  doctordetails where doctorId='"+doctorid+"' and doctorname='"+docname+"'";
		    	rs = stmt.executeQuery(sql);
		    	
		    	
		    	
			    if(rs.next()) {
			    	String id=rs.getString(1);
			    	String name=rs.getString(2);
			    	String specials=rs.getString(3);
			    	String hospi=rs.getString(4);
			    	String date=rs.getString(5);
			    	String time=rs.getString(6);
			    	String venue=rs.getString(7);
			    	
			    	doctor d1=new doctor(id,name,specials,hospi,date,time,venue);
			    	
			    	doc1.add(d1);
			    }
		    }
			    catch(Exception e) {
			    	e.printStackTrace();
			    }
		    
			    
		    
		    
		   
		    return doc1;
	}
	public static List<doctor> validate(String doctorsp,String hospital){
	    ArrayList<doctor> doc=new ArrayList<>();
	   
	    
	    try {
	    	
	    	con = DBConnection.getConnection();
	    	 stmt = con.createStatement();
	    	
	    	String sql="select * from  doctordetails where specialization='"+doctorsp+"' and hospital='"+hospital+"'";
	    	rs = stmt.executeQuery(sql);
	    	
	    	
	    	
		    if(rs.next()) {
		    	String id=rs.getString(1);
		    	String name=rs.getString(2);
		    	String specials=rs.getString(3);
		    	String hospi=rs.getString(4);
		    	String date=rs.getString(5);
		    	String time=rs.getString(6);
		    	String venue=rs.getString(7);
		    	
		    	doctor d1=new doctor(id,name,specials,hospi,date,time,venue);
		    	
		    	doc.add(d1);
		    }
	    }
		    catch(Exception e) {
		    	e.printStackTrace();
		    }
	    
		    
	    
	    
	   
	    return doc;
}
	public static boolean updatedoctor(String id,String name,String specilal,String hspital,String dt,String time,String venue) {
			
			boolean isSuccess=false;
			
		    
		    try {
		    	con = DBConnection.getConnection();
		    	 stmt = con.createStatement();
		    	String sql="update doctordetails  set doctorname='"+name+"' , specialization='"+specilal+"' , "
		    			+ "hospital='"+hspital+"' ,date='"+dt+"' , time='"+time+"' , "
		    					+ "venue='"+venue+"' "  + "where doctorId='"+id+"'";
		    	
		    	int  rs=stmt.executeUpdate(sql);
		    	
		    	if(rs>0) {
		    		isSuccess=true;
		    	}
		    	else {
		    		isSuccess=false;
		    	}
		    	
		    }
		    
		    catch(Exception e) {
		    	e.printStackTrace();
		    }
		    			
		return isSuccess;
		
		
	}
	public static boolean deletedoctor(String id) {
		
		
		
		
		boolean isSuccess=false;
		
	    
	    try {
	    	con = DBConnection.getConnection();
	    	 stmt = con.createStatement();
	    	
	    	String sql="delete from doctordetails where doctorId='"+id+"'";
	    	
	    	int  rs=stmt.executeUpdate(sql);
	    	
	    	if(rs>0) {
	    		isSuccess=true;
	    	}
	    	else {
	    		isSuccess=false;
	    	}
	    	
	    }
	    
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
	    			
	return isSuccess;


	}

	public static List<doctor> getDoctorDetails(String Id) {
		
		
		
		ArrayList<doctor> doc1 = new ArrayList<>();
		
		
		try {
			con = DBConnection.getConnection();
	    	 stmt = con.createStatement();
			
			String sql = "select * from doctordetails where doctorId='"+Id+"'";
			ResultSet rs=stmt.executeQuery(sql);
			
			
		    while(rs.next()) {
		    	String id=rs.getString(1);
		    	String name=rs.getString(2);
		    	String specials=rs.getString(3);
		    	String hospi=rs.getString(4);
		    	String date=rs.getString(5);
		    	String time=rs.getString(6);
		    	String venue=rs.getString(7);
		    	
		    	doctor d1=new doctor(id,name,specials,hospi,date,time,venue);
		    	
		    	doc1.add(d1);
		    }
		}
		    catch(Exception e) {
		    	e.printStackTrace();
		    }

		    



		return doc1;
		}

	public static boolean insertdoctor(String id,String name,String specilal,String hspital,String dt,String time,String venue) {
		
		boolean isSuccess=false;
		
		
	    
	    try {
	    	con = DBConnection.getConnection();
	    	 stmt = con.createStatement();
	    	
	    	String sql="Insert into doctordetails  values('"+id+"','"+name+"' , '"+specilal+"' ,'"+hspital+"' ,'"+dt+"' , '"+time+"' , '"+venue+"' )";
	    	
	    	int  rs=stmt.executeUpdate(sql);
	    	
	    	if(rs>0) {
	    		isSuccess=true;
	    	}
	    	else {
	    		isSuccess=false;
	    	}
	    	
	    
	    }
	    catch(Exception e) {
	    	e.printStackTrace();
	    }
	    			
	return isSuccess;
	}
	
}


