package net.adminschedule.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.adminschedule.db.MemberBean;
import net.adminschedule.db.ScheduleBean;
import net.adminschedule.db.ScheduleDAO;

public class AdminScheduleList implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("utf-8");	
		ScheduleDAO dao = new ScheduleDAO();
		ArrayList<ScheduleBean> scheduleList = dao.getscheduleList();
		
		request.setAttribute("scheduleList", scheduleList);
		forward.setRedirect(false);
		forward.setPath("/admin/schedulemodify.jsp");
		
		
		return forward;
		
	}
		

}
