package org.gyeongju.ctrl.qna;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.gyeongju.dao.CommunityDAO;

@WebServlet("/DelCommunity.do")
public class DelCommunityCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DelCommunityCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int bno = Integer.parseInt(request.getParameter("bno"));

		CommunityDAO dao = new CommunityDAO();
		
		
		HttpSession session = request.getSession();
		String sid = (String) session.getAttribute("sid");
		String aid = dao.getCommunity2(bno).getAid();
		
		if(!sid.equals("admin")|| !sid.equals(aid)){
			response.sendRedirect("/gyeongju");
		}
		
		String filename = dao.getCommunity2(bno).getFilename();
		String filepath = request.getServletContext().getRealPath("/upload/community/")+filename;
		File delFile = new File(filepath);
		delFile.delete();
		
		int cnt = dao.delCommunity(bno);
		
		if(cnt>0) {
			response.sendRedirect("/gyeongju/QnaList.do");
		} else {
			response.sendRedirect("/gyeongju/GetQna2.do?bno="+bno);
		}
	}

}
