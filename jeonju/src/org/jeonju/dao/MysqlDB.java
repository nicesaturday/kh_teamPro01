package org.jeonju.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MysqlDB implements SqlLang {
	private Connection con = null;
	private String URL = "jdbc:mariadb://192.168.20.221:3308/team32";
	final static String USERID = "team32";
	final static String USERPW = "cd1234";
	
	public Connection connect() {
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			try {
				con = DriverManager.getConnection(URL,USERID,USERPW);
			} catch (SQLException e) {e.printStackTrace();}
		} catch (ClassNotFoundException e) {e.printStackTrace();}
		return con;
	}
	
	
	public void close(Connection con) {
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void close(Connection con , PreparedStatement pstmt) {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void close(Connection con , PreparedStatement pstmt , ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	
	
	
}
