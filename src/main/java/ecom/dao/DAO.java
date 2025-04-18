package ecom.dao;
import beans.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.TreeSet;
public class DAO 
{
	Connection con;
	public DAO()
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Driver is loaded");
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","madhu","madhu123");
			System.out.println("Connected..");
		}catch(ClassNotFoundException ex)
		{
			System.out.println("Not loaded................");
			System.out.println(ex);
		}
		catch(SQLException ex)
		{
			System.out.println("Not Connected................");
			System.err.println(ex);
		}
	}
	
	public boolean doRegister(String phone,String password,String email,String gender,String city,String role)
	{
		boolean flag=false;
		try {
				PreparedStatement pstmt= con.prepareStatement("insert into register values(?,?,?,?,?,?)");
				pstmt.setString(1,phone);
				pstmt.setString(2,password);
				pstmt.setString(3,email);
				pstmt.setString(4,gender);
				pstmt.setString(5,city);
				pstmt.setString(6,role);
				int r=pstmt.executeUpdate();
				if(r>0)
				{
					flag=true;
				}
		}catch(SQLException ex)
		{
			System.out.println("Not Connected................");
			System.err.println(ex);
		}
		return flag;
	}
	
	
	
	
	
	
	
	
	
	

	public String loginCheck(String phone,String pwd)
	{
				String role=null;
				try {
				PreparedStatement pstmt=con.prepareStatement("select role from register where phone=? and password=?");
				pstmt.setString(1,phone);
				pstmt.setString(2,pwd);
				ResultSet rs= pstmt.executeQuery();
				if(rs.next())
				{
					role=rs.getString("role");
				}
				
				}catch(SQLException ex)
				{	System.err.println("Error while checking userid/pwd");
					System.out.println(ex);
				}
				return role;
	}
	public boolean addProduct(int pid,String pname,float price,int discount_percentage,String description,String prod_image)
	{
		boolean flag=false;
		try {
				PreparedStatement pstmt= con.prepareStatement("insert into product values(?,?,?,?,?,?)");
				pstmt.setInt(1,pid);
				pstmt.setString(2,pname);
				pstmt.setFloat(3,price);
				pstmt.setInt(4,discount_percentage);
				pstmt.setString(5,description);
				pstmt.setString(6,prod_image);
				int r=pstmt.executeUpdate();
				if(r>0)
				{
					flag=true;
				}
		}catch(SQLException ex)
		{
			System.out.println("Error while adding product details...");
			System.err.println(ex);
		}
		return flag;
	}
	
	public ArrayList<Product> getProducts()
	{
			ArrayList<Product> products=new ArrayList<Product>();
			try {
					PreparedStatement pstmt= con.prepareStatement("select * from product");
					ResultSet rs=pstmt.executeQuery();
					while(rs.next())
					{
						int pid=rs.getInt("pid");
						String pname=rs.getString("pname");
						float price=rs.getFloat("price");
						int discount_percentage=rs.getInt("DISCOUNT_PERCENTAGE");
						String description=rs.getString("DESCRIPTION");
						String prod_image=rs.getString("PROD_IMAGE");
						Product productRow=new Product(pid, pname, price, discount_percentage, description, prod_image);
						products.add(productRow);
					}
			}catch(SQLException ex)
			{
				System.out.println("Error while getting product details:");
				System.err.println(ex);
			}
			return products;
	}
	
	
	
	
	public ArrayList<Product> getProducts(TreeSet<Integer > items)
	{
		
		String cmd="select * from product where pid in (";
		if(items!=null)
		{
			for(Integer pid:items)
			{
				cmd+=pid+",";
				//out.println("<h1>"+pid+"</h1>");
			}
			cmd=cmd.substring(0,cmd.length()-1);
			cmd=cmd+")";
		}
		
		
		
			ArrayList<Product> products=new ArrayList<Product>();
			try {
					PreparedStatement pstmt= con.prepareStatement(cmd);
					ResultSet rs=pstmt.executeQuery();
					while(rs.next())
					{
						int pid=rs.getInt("pid");
						String pname=rs.getString("pname");
						float price=rs.getFloat("price");
						int discount_percentage=rs.getInt("DISCOUNT_PERCENTAGE");
						String description=rs.getString("DESCRIPTION");
						String prod_image=rs.getString("PROD_IMAGE");
						Product productRow=new Product(pid, pname, price, discount_percentage, description, prod_image);
						products.add(productRow);
					}
			}catch(SQLException ex)
			{
				System.out.println("Error while getting product details:");
				System.err.println(ex);
			}
			return products;
	}
	
	
	
	
	
	
	
	
	
	
	
	public static void main(String args[])
	{
		new DAO();
	}
}



/*
 
 create table register
 (
 phone varchar2(10)primary key,
 password varchar2(15),
 email varchar2(25),
 gender varchar2(6),
 address varchar2(30)
 );
 
 * */
