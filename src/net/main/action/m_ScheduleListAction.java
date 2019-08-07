package net.main.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.main.action.ActionForward;
import net.main.db.scheduleDAO;
import net.main.db.scheduleDTO;

public class m_ScheduleListAction implements Action{
// 스케줄 등록하기 
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("페이지 이동 성공:m_ScheduleListAction");
		 request.setCharacterEncoding("UTF-8"); 
		
		ActionForward forward=new ActionForward();
		scheduleDTO scheduledto = new scheduleDTO();
		scheduleDAO scheduledao=new scheduleDAO();
		
		/*
		 * request.getSession().getAttribute("ID"); String id=
		 * (String)request.getSession().getAttribute("ID"); System.out.println(
		 * request.getSession().getAttribute("ID")); ArrayList<scheduleDTO> schedulelist
		 * = scheduledao.getschedule(id); // 데이터를 가지고 와서 등록하기 버튼을 누르면 액션이 처리되게 해야함.
		 * request.setAttribute("schedulelist", schedulelist);
		 */
		
		  System.out.println(request.getParameter("schedule_Name"));// null 값
		  scheduledto.setSchedule_Name(request.getParameter("schedule_Name"));
		  scheduledto.setSchedule_manager(request.getParameter("schedule_manager"));
		  System.out.println(request.getParameter("schedule_memo"));// 대소문자 구분이 중요함.
		  scheduledto.setSchedule_memo(request.getParameter("schedule_memo"));
		  scheduledto.setSchedule_day(request.getParameter("schedule_day"));
		 
		 String id = (String)request.getSession().getAttribute("id");  
		scheduledao.ScheduleAdd(scheduledto,id);
		ArrayList<scheduleDTO> schedulelist = scheduledao.getschedule(id);
		request.setAttribute("schedulelist", schedulelist);
	
		forward.setRedirect(false);
		forward.setPath("./member/schedule_view.jsp"); //"./member/schedule_View.jsp"
		
		return forward;
	
	}

}
