package org.leno.entity;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
public class DBConnection {
	public Connection connection=null;
	public Statement statement=null;
	public ResultSet resultSet=null;
	private int i=0;
	private Connection createConnection()
	{
		try
		{
			//com.mysql.jdbc.Driver
			//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/noel?serverTimezone=UTC","root","root");
			//System.out.print("成功");
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return this.connection;
	}
	public int update_DB(String sql)
	{
		try
		{
			this.connection=this.createConnection();
			this.statement=this.connection.createStatement();
			this.i=this.statement.executeUpdate(sql);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try {
				this.statement.close();
				this.connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return this.i;
	}
	public int Exists_DB(String sql)
	{
		try
		{
			this.connection=this.createConnection();
			this.statement=this.connection.createStatement();
			this.resultSet=this.statement.executeQuery(sql);
			if(this.resultSet.next())
			{
				this.i=1;
			}
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		finally
		{
			try {
				this.statement.close();
				this.connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return this.i;
	}
	
	//导出Excel
	public ResultSet createResultSet(String sql)
	{
		try
		{
			this.connection=this.createConnection();
			this.statement=this.connection.createStatement();
			this.resultSet=this.statement.executeQuery(sql);
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return this.resultSet;
	}
	
	
	
	public static void main(String[]ages)
	{
		DBConnection bd=new DBConnection();
		bd.createConnection();
	}
}
