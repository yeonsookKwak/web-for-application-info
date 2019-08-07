package net.adminschedule.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.adminschedule.action.*;

public class AdminFrontController extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		this.processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		this.processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		// 넘어온 커맨드를 추출하는 과정
		String requestURI = request.getRequestURI();
		String contextpath = request.getContextPath();
		String command = requestURI.substring(contextpath.length());

		// URI, command 확인
		System.out.println("AdminFrontControllor : " + requestURI);
		System.out.println("AdminFrontControllor : " + command);

		ActionForward forward = null;
		Action action = null;

		if (command.equals("/admin/membermanage.admin")) { // 관리자_고객관리이동
			action = new AdminMemberList();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/admin/adminscheduleinsert.admin")) { // 관리자_일정입력처리
			action = new AdminInsertSchedule();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/admin/adminschedulemodify.admin")) { // 관리자_일정수정처리
			action = new AdminUpdateSchedule();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/admin/scheduleupdate.admin")) { // 관리자_일정수정
			action = new AdminScheduleList();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/admin/adminmain.admin")) {// 관리자_메인이동
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/admin/adminmain.jsp");

		} else if (command.equals("/admin/scheduleinsert.admin")) {// 관리자_일정삽입
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/admin/scheduleinsert.jsp");

		}else if (command.equals("/admin/adminschedulemodify2.admin")) {// 관리자_일정수정
			forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("/admin/schedulemodify.jsp");

		}


		if (forward != null) {
			if (forward.isRedirect()) {
				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}
