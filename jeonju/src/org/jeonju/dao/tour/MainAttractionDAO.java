package org.jeonju.dao.tour;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeonju.dao.MysqlDB;
import org.jeonju.dao.SqlLang;
import org.jeonju.dto.User;
import org.jeonju.dto.tour.MainAttraction;

public class MainAttractionDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MysqlDB db = new MysqlDB();
	
	public List<MainAttraction> getMainAttractionList() {
		List<MainAttraction> MainAttractionList = new ArrayList<MainAttraction>();
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETMainAttractionList);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MainAttraction MainAttraction = new MainAttraction(rs.getInt("no"),
								  rs.getString("name"),
						          rs.getString("locate"),
						          rs.getString("comment"),
						          rs.getString("img"),
						          rs.getString("sub_img1"),
						          rs.getString("sub_img2"),
						          rs.getString("tel"),
						          rs.getString("period"),
						          rs.getString("homepage"),
						          rs.getString("sub1"),
						          rs.getString("sub2"));
				
				MainAttractionList.add(MainAttraction);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		
		return MainAttractionList;
	}
	
	public MainAttraction getMainAttractionOne(int no) {
		MainAttraction MainAttraction = null;
		
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETMainAttractionOne);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				MainAttraction = new MainAttraction(rs.getInt("no"),
						  rs.getString("name"),
				          rs.getString("locate"),
				          rs.getString("comment"),
				          rs.getString("img"),
				          rs.getString("sub_img1"),
				          rs.getString("sub_img2"),
				          rs.getString("tel"),
				          rs.getString("period"),
				          rs.getString("homepage"),
				          rs.getString("sub1"),
				          rs.getString("sub2"));
			}
		} catch (Exception e) {
			//rs에 문제가 생긴경우 (user를 받지 못했다.);
			e.printStackTrace();
		} finally {
			db.close(con, pstmt , rs);
		}
		//해당 유저를 받았다면 객체를 , 아니라면  null을 return;
		return MainAttraction;
	}
}


