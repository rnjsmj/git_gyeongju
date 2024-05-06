package org.gyeongju.ctrl.food;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gyeongju.dao.FoodDAO;


@WebServlet("/FoodDelete.do")
public class FoodDeleteCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FoodDeleteCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String ftype = request.getParameter("ftype");
		int fno = Integer.parseInt(request.getParameter("fno"));
		
		FoodDAO dao = new FoodDAO();
		
		String filename = dao.getFood(fno).getFilename();
		String filepath = request.getServletContext().getRealPath("/upload/food/")+filename;
		File delFile = new File(filepath);
		delFile.delete();
//		System.out.println(filepath);
//		System.out.println(isDel==true?"파일삭제성공" : "파일삭제실패");
		
		int cnt = dao.deleteFood(fno);
		
		if(cnt>0) {
			response.sendRedirect("/gyeongju/FoodList.do?ftype="+ftype);
		} else {
			response.sendRedirect("/gyeongju/GetFood.do?ftype="+ftype+"&fno="+fno);
		}
	}

}
