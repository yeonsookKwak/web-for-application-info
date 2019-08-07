package net.main.action;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.http.*;

import net.main.action.Action;
import net.main.action.ActionForward;
import net.main.db.ListBean;
import net.main.db.scheduleDAO;

public class MainAction2 implements Action{
	
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		ActionForward forward=new ActionForward();
		  request.setCharacterEncoding("utf-8");
		  
		  //String id =(String)request.getParameter("id");// (String)request.getAttribute("id");
		  String id = (String)request.getSession().getAttribute("id");
		  System.out.println("@@@ session(get) : "+ id);
		  
		  System.out.println("request.getSession().getAttribute(\"id\");"+id);
		  System.out.println(id); forward.setRedirect(false);
		  forward.setPath("/MainPage2.mo");
		  
		  scheduleDAO dao = new scheduleDAO(); 
		  ArrayList<ListBean> arrayList = dao.mainPageViewData(id,request); 
		  request.setAttribute("arrayList", arrayList); return forward;
	}
	
}
