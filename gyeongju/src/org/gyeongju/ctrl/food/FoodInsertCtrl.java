package org.gyeongju.ctrl.food;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gyeongju.dao.FoodDAO;
import org.gyeongju.dto.Food;

@WebServlet("/FoodInsert.do")
public class FoodInsertCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public FoodInsertCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Food food = new Food();
		food.setFname(request.getParameter("fname"));
		food.setFtype(request.getParameter("ftypeval"));
		food.setFtel(request.getParameter("ftel"));
		food.setFaddr(request.getParameter("faddr"));
		food.setFcomm(request.getParameter("fcomm"));
		//파일 추가
		
		FoodDAO dao = new FoodDAO();
		int cnt = dao.insertFood(food);
		String ftype = request.getParameter("ftype");
		
		if(cnt>0) {
			response.sendRedirect("/gyeongju/FoodList.do?ftype="+ftype);
		} else {
			response.sendRedirect("/gyeongju/food/insertFood.jsp");
		}
	}

}
