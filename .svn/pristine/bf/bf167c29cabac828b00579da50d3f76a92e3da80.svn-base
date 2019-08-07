package net.adminschedule.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ScheduleDAO {
	DataSource ds;
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public ScheduleDAO() {
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context) initCtx.lookup("java:comp/env");
			ds = (DataSource) envCtx.lookup("jdbc/OracleDB");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public ArrayList<ScheduleBean> getscheduleList() {//회원목록 출력처리
		ArrayList<ScheduleBean> scheduleList = new ArrayList<ScheduleBean>();
		
		ScheduleBean schedule = null;

		try {
			// 쿼리
			StringBuffer query = new StringBuffer();
			query.append("SELECT * FROM SCHEDULE");

			con = ds.getConnection();
			pstmt = con.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			
			
			while (rs.next()) {
				schedule = new ScheduleBean();
				schedule.setSCHEDULE_ID(rs.getInt("sCHEDULE_ID"));
				schedule.setSCHEDULE_NAME(rs.getString("sCHEDULE_NAME"));
				schedule.setSCHEDULE_APP_START_DATE(rs.getString("sCHEDULE_APP_START_DATE"));
				schedule.setSCHEDULE_APP_END_DATE(rs.getString("sCHEDULE_APP_END_DATE"));
				schedule.setSCHEDULE_DAY(rs.getString("sCHEDULE_DAY"));
				schedule.setSCHEDULE_REF_SITE(rs.getString("sCHEDULE_REF_SITE"));
				schedule.setSCHEDULE_MEMO(rs.getString("sCHEDULE_MEMO"));
				schedule.setSCHEDULE_MANAGER(rs.getString("sCHEDULE_MANAGER"));
				
				scheduleList.add(schedule);
				
			}
			
			
			return scheduleList;

		} catch (Exception sqle) {
			throw new RuntimeException(sqle.getMessage());
		} finally {
			// Connection, PreparedStatement를 닫는다.
			try {
				if (pstmt != null) {
					pstmt.close();
					pstmt = null;
				}
				if (con != null) {
					con.close();
					con = null;
				}
			} catch (Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
	}
	
	public void insertSchedule(ScheduleBean schedule) throws SQLException {
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			con.setAutoCommit(false);
			StringBuffer sql = new StringBuffer();
			sql.append(
					"insert into SCHEDULE values ((SELECT NVL(MAX(SCHEDULE_ID),0)+1 FROM SCHEDULE), ?, ?, ?, ?, ?, ?, ?)");

			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, schedule.getSCHEDULE_NAME());
			pstmt.setString(2, schedule.getSCHEDULE_APP_START_DATE());
			pstmt.setString(3, schedule.getSCHEDULE_APP_END_DATE());
			pstmt.setString(4, schedule.getSCHEDULE_DAY());
			pstmt.setString(5, schedule.getSCHEDULE_REF_SITE());
			pstmt.setString(6, schedule.getSCHEDULE_MEMO());
			pstmt.setString(7, schedule.getSCHEDULE_MANAGER());

			pstmt.executeUpdate();

			con.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception ex) {
			}
		}

	}

	public void updateSchedule(ScheduleBean schedule) throws SQLException {
		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = ds.getConnection();
			con.setAutoCommit(false);
			StringBuffer sql = new StringBuffer(); // 자동커밋방지 sql.
			sql.append(
					"UPDATE SCHEDULE SET SCHEDULE_APP_START_DATE=?, SCHEDULE_APP_END_DATE=?, SCHEDULE_DAY=? WHERE SCHEDULE_ID=?");

			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, schedule.getSCHEDULE_APP_START_DATE());
			pstmt.setString(2, schedule.getSCHEDULE_APP_END_DATE());
			pstmt.setString(3, schedule.getSCHEDULE_DAY());
			pstmt.setInt(4, schedule.getSCHEDULE_ID());

			pstmt.executeUpdate();

			con.commit();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (pstmt != null)
					pstmt.close();
				if (con != null)
					con.close();
			} catch (Exception ex) {
			}

		}
	}

}
