package net.adminschedule.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.adminschedule.db.ScheduleDAO;
import net.adminschedule.db.ScheduleBean;

public class AdminUpdateSchedule implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("utf-8");	
		ScheduleDAO dao = new ScheduleDAO();
		ScheduleBean schedule = new ScheduleBean();

		schedule.setSCHEDULE_APP_START_DATE(request.getParameter("sCHEDULE_APP_START_DATE"));
		schedule.setSCHEDULE_APP_END_DATE(request.getParameter("sCHEDULE_APP_END_DATE"));
		schedule.setSCHEDULE_DAY(request.getParameter("sCHEDULE_DAY"));
		schedule.setSCHEDULE_ID(Integer.parseInt(request.getParameter("sCHEDULE_ID")));
		
		dao.updateSchedule(schedule);
		
		ArrayList<ScheduleBean> scheduleList = dao.getscheduleList();
		
		request.setAttribute("scheduleList", scheduleList);
		
		forward.setRedirect(false);
		forward.setPath("/admin/adminschedulemodify2.admin");
		
		return forward;
	
	}
}
