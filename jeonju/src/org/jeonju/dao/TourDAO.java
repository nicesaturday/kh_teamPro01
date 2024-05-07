package org.jeonju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.jeonju.dto.tour.TBought;
import org.jeonju.dto.tour.Tourism;

public class TourDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	MysqlDB db = new MysqlDB();
	
	public List<Tourism> getTourismList() {
		List<Tourism> tourismList = new ArrayList<Tourism>();
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETTOURISMLIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Tourism tourism = new Tourism(rs.getInt("no"),
								  rs.getString("name"),
						          rs.getString("start_locate"),
						          rs.getString("lang"),
						          rs.getString("course"),
						          rs.getInt("max_headcount"),
						          rs.getInt("need_time"));
				
				tourismList.add(tourism);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		
		return tourismList;
	}
	
	public List<TBought> getTBoughtList(int no) {
		List<TBought> TBoughtList = new ArrayList<TBought>();
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.GETTBOUGHTLIST);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TBought TBought = new TBought(rs.getInt("no"),
								  rs.getString("start_time"),
						          rs.getString("resdate"),
						          rs.getInt("headcount"),
						          rs.getInt("user_no"),
						          rs.getInt("t_no"));
				
				TBoughtList.add(TBought);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt, rs);
		}
		
		return TBoughtList;
	}
	
	public int insertTbought(TBought tbought) {
		int cnt = 0;
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.INSERTTBOUGHT);
			pstmt.setString(1, tbought.getStart_time());
			pstmt.setInt(2, tbought.getHeadcount());
			pstmt.setInt(3, tbought.getUser_no());
			pstmt.setInt(4, tbought.getT_no());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		
		return cnt;
	}
	
	public int updateTbought(TBought tbought) {
		int cnt = 0;
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.INSERTTBOUGHT);
			pstmt.setString(1, tbought.getStart_time());
			pstmt.setInt(2, tbought.getHeadcount());
			pstmt.setInt(3, tbought.getNo());
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		
		return cnt;
	}
	
	public int deleteTbought(int no) {
		int cnt = 0;
		
		try {
			con = db.connect();
			pstmt = con.prepareStatement(SqlLang.DELETETBOUGHT);
			pstmt.setInt(1, no);
			cnt = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			db.close(con, pstmt);
		}
		return cnt;
	}
	
}
