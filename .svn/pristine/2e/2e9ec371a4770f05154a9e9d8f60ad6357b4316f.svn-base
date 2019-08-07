package net.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import net.member.db.MemberDAO;

public class MemberLoginAction implements Action{
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session=request.getSession();
		ActionForward forward=new ActionForward();
		MemberDAO memberdao=new MemberDAO();		
		
		String id=request.getParameter("MEMBER_ID");
		session.setAttribute("id", id);
		System.out.println("@@@ session : "+ session.getAttribute("id"));
		
		String pass=request.getParameter("MEMBER_PW");		
		int check=memberdao.userCheck(id, pass);
		if(check == 1){
			request.setAttribute("id", id);///
  			if(memberdao.isAdmin(id)){
				forward.setRedirect(false);
				forward.setPath("./admin/adminmain.jsp"); 
				return forward;
			}else{
				forward.setRedirect(true);
				//forward.setPath("./MainAction.mo");
				forward=null;
				//session.setAttribute("id", id);
				response.setContentType("text/html; charset=utf-8");				
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('WelCome~~!!');");				
				out.println("location.href='./MainAction.mo?year=2019&month=5';");
				out.println("</script>");
				out.close();
				return forward;
			}
		}else if(check == 0){
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지 않습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		}else{
			response.setContentType("text/html; charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디가 존재하지 않습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
		}
		return null;
	}
}
