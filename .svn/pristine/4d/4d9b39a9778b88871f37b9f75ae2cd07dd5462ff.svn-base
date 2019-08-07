package net.adminschedule.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.adminschedule.db.ScheduleDAO;
import net.adminschedule.db.ScheduleBean;

public class AdminInsertSchedule implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward = new ActionForward();
		request.setCharacterEncoding("utf-8");	
		ScheduleDAO dao = new ScheduleDAO();
		
		// 스케줄정보 자바빈에 입력
		ScheduleBean schedule = new ScheduleBean();

		schedule.setSCHEDULE_NAME(request.getParameter("sCHEDULE_NAME"));
		schedule.setSCHEDULE_APP_START_DATE(request.getParameter("sCHEDULE_APP_START_DATE"));
		schedule.setSCHEDULE_APP_END_DATE(request.getParameter("sCHEDULE_APP_END_DATE"));
		schedule.setSCHEDULE_DAY(request.getParameter("sCHEDULE_DAY"));
		schedule.setSCHEDULE_REF_SITE(request.getParameter("sCHEDULE_REF_SITE"));
		schedule.setSCHEDULE_MEMO(request.getParameter("sCHEDULE_MEMO"));
		schedule.setSCHEDULE_MANAGER(request.getParameter("sCHEDULE_MANAGER"));
		
		//스케줄저장
		dao.insertSchedule(schedule);
		
		
		forward.setRedirect(false);
		forward.setPath("/admin/adminmain.admin");
		
		return forward;
		
	}
}
