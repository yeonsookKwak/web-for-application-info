package net.main.action;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.main.action.ActionForward;
import net.main.db.scheduleDTO;
import net.main.db.scheduleDAO;


public class ScheduleSearchAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("페이지 이동 성공");
		request.setCharacterEncoding("UTF-8");
		
		ActionForward forward=new ActionForward();
		scheduleDAO scheduledao=new scheduleDAO();
		scheduleDTO scheduledata = new scheduleDTO();
		
		String ename =(String)request.getParameter("search");	
		//System.out.println("값을 받아옴"+ename);
		scheduledata = scheduledao.searchSchedule(ename);
		System.out.println("값을 받아옴");
		
  			if(scheduledata != null){
				forward.setRedirect(false);
				request.setAttribute("scheduledata", scheduledata);
				forward.setPath("./member/scheduleSearch.jsp"); 
				return forward;
			}else {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('검색내용이 존재하지 않습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		}
	
  			return null;
	}

		
	}


