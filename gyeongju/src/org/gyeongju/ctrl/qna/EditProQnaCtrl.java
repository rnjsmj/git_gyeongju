package org.gyeongju.ctrl.qna;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gyeongju.dao.CommunityDAO;
import org.gyeongju.dto.Community;

@WebServlet("/EditProQna.do")
public class EditProQnaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EditProQnaCtrl() {
        super();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Community com = new Community();
		com.setBno(Integer.parseInt(request.getParameter("bno")));
		com.setTitle(request.getParameter("title"));
		com.setContent(request.getParameter("content"));
		
		CommunityDAO dao = new CommunityDAO();
		int cnt = dao.editProCommunity(com);
		
		if(cnt>0) {
			response.sendRedirect("/gyeongju/QnaList.do");
		} else {
			response.sendRedirect("/gyeongju/EditQna.do?no="+com.getBno());
		}
	}

}
