package net.main.action;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import net.main.action.Action;
import net.main.action.ActionForward;

public class MainFrontController extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		String RequestURI = request.getRequestURI();
		System.out.println(RequestURI);
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		String command = RequestURI.substring(contextPath.length());
		
		ActionForward forward = null;
		Action action = null;
		System.out.println("요청명령:" + command);
		try {
		if (command.equals("/MainAction.mo")) {
			System.out.println("if (command.equals(\"/MainAction.mo\")) 진입");
			action = new MainAction();	
			forward = action.execute(request, response);				
		} else if (command.equals("/MainAction2.mo")) {
			System.out.println("if (command.equals(\"/MainAction.mo\")) 진입");
			action = new MainAction2();	
			forward = action.execute(request, response);				
		}
		
		if(command.equals("/MainPage.mo")) {						
			forward= new ActionForward();
			forward.setPath("./main/index.jsp"); //index.jsp로 변경
		} else if(command.equals("/MainPage2.mo")) {						
			forward= new ActionForward();
			forward.setPath("./main/calendar.jsp"); //index.jsp로 변경
		} else if (command.equals("/ScheduleSearchAction.mo")) { // 2. 검색을 하면 검색내용을 보여주는 페이지로 이동.
			System.out.println("요청" + command);
			action =  new ScheduleSearchAction();
			forward = action.execute(request, response);
		}  else if (command.equals("/m_ScheduleModifyAction.mo")) { // 3. 고객 스케줄 수정 페이지 이동.
			action = new m_ScheduleModifyAction();
			forward = action.execute(request, response);
		} else if (command.equals("/m_ScheduleListAction.mo")) { // 4. 고객 스케줄  등록 후 페이지 이동.
			System.out.println("등록한 후");
			action =  new m_ScheduleListAction();
			forward = action.execute(request, response);
			}	 else if (command.equals("/m_ScheduleViewAction.mo")) { // 5. 고객 스케줄 등록 후 보여지기이동. 
				System.out.println("자세하게 보여줘"); 
				action = new m_ScheduleViewAction();
				forward = action.execute(request, response); }
				 
			// System.out.println(forward.getPath());
			if (forward != null) {
				if (forward.isRedirect()) {
					System.out.println("sendRedirect");
					response.sendRedirect(forward.getPath());
				} else {
					System.out.println("RequestDispatcher");
					RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
					System.out.println( forward.getPath());
					dispatcher.forward(request, response);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
