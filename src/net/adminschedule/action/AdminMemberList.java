package net.adminschedule.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.adminschedule.db.MemberBean;
import net.adminschedule.db.MemberDAO;

public class AdminMemberList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("utf-8");	
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberBean> memberList = dao.getMemberList();
		
		request.setAttribute("memberList", memberList);
		
		forward.setRedirect(false);
		forward.setPath("/admin/membermanage.jsp");

		return forward;
	}

}
