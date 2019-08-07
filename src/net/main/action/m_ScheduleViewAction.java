package net.main.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.main.action.ActionForward;
import net.main.db.scheduleDAO;
import net.main.db.scheduleDTO;

public class m_ScheduleViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("1");
		scheduleDAO sdao = new scheduleDAO();
		scheduleDTO sdto = new scheduleDTO();
		System.out.println("여기");
		sdao.ScheduleView();
		System.out.println("viewAction");
		
		request.getSession().getAttribute("ID");
		String id= (String)request.getSession().getAttribute("ID");
		System.out.println(	request.getSession().getAttribute("ID"));
		ArrayList<scheduleDTO> schedulelist = sdao.getschedule(id);
		// 데이터를 가지고 와서 등록하기 버튼을 누르면 액션이 처리되게 해야함. 
		request.setAttribute("schedulelist", schedulelist);
		
		/* request.setAttribute("sdto", sdto); */
			ActionForward forward = new ActionForward();
			forward.setRedirect(false);
			forward.setPath("./member/schedule_View.jsp");
			return forward;
		}
		
	}

