package org.gyeongju.ctrl.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login.do")
public class LoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginCtrl() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		if(session.getAttribute("sid") != null) {
			response.sendRedirect("/gyeongju");
			return;
		}
		
		RequestDispatcher view = request.getRequestDispatcher("/member/login.jsp");
		view.forward(request, response);
		
	}

}
