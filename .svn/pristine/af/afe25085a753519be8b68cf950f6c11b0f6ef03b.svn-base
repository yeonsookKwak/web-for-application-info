package net.adminschedule.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
	DataSource ds;
	Connection con=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;

	public MemberDAO() {
		try{
			Context initCtx=new InitialContext();
			Context envCtx=(Context)initCtx.lookup("java:comp/env");
			ds=(DataSource)envCtx.lookup("jdbc/OracleDB");
		}catch(Exception ex){
			ex.printStackTrace();
		}
	}

	public ArrayList<MemberBean> getMemberList() {//회원목록 출력처리
		ArrayList<MemberBean> memberList = new ArrayList<MemberBean>();
		
		MemberBean member = null;

		try {
			// 쿼리
			StringBuffer query = new StringBuffer();
			query.append("SELECT * FROM MEMBER");

			con = ds.getConnection();
			pstmt = con.prepareStatement(query.toString());
			rs = pstmt.executeQuery();
			
			
			while (rs.next()) {
				member = new MemberBean();
				member.setMEMBER_ID(rs.getString("member_id"));
				member.setMEMBER_PW(rs.getString("member_pw"));
				member.setMEMBER_NAME(rs.getString("member_name"));	
				member.setMEMBER_JUMIN1(rs.getInt("member_jumin1"));
				member.setMEMBER_JUMIN2(rs.getInt("member_jumin2"));
				member.setMEMBER_EMAIL(rs.getString("member_email"));
				member.setMEMBER_EMAIL_GET(rs.getString("member_email_get"));
				member.setMEMBER_MOBILE(rs.getString("member_mobile"));
				member.setMEMBER_PHONE(rs.getString("member_phone"));
				member.setMEMBER_ZIPCODE(rs.getString("member_zipcode"));
				member.setMEMBER_ADDR1(rs.getString("member_addr1"));
				member.setMEMBER_ADDR2(rs.getString("member_addr2"));
				member.setMEMBER_ADMIN(rs.getInt("member_admin"));
				memberList.add(member);
				
			}
			
			
			return memberList;

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
	} // end getUserInfo

	
	
}
