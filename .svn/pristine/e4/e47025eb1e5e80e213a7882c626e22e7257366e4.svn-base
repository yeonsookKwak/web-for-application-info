package net.main.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.main.action.ActionForward;
import net.main.db.scheduleDAO;

public class m_ScheduleModifyAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("페이지 이동 성공:m_ScheduleModifyAction");
		 request.setCharacterEncoding("UTF-8"); 
		
		ActionForward forward=new ActionForward();
		
		scheduleDAO scheduledao=new scheduleDAO();
		 
		forward.setRedirect(false);
		forward.setPath("./member/schedule_add.jsp"); 
		
		return forward;
		
	}

}
