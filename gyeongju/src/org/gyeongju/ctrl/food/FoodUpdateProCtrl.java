package org.gyeongju.ctrl.food;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gyeongju.dao.FoodDAO;
import org.gyeongju.dto.Food;


@WebServlet("/FoodUpdatePro.do")
public class FoodUpdateProCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FoodUpdateProCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Food food = new Food();
		food.setFno(Integer.parseInt(request.getParameter("fno")));
		food.setFname(request.getParameter("fname"));
		food.setFtype(request.getParameter("ftypeval"));
		food.setFaddr(request.getParameter("faddr"));
		food.setFtel(request.getParameter("ftel"));
		food.setFcomm(request.getParameter("fcomm"));
		
		FoodDAO dao = new FoodDAO();
		int cnt = dao.updateFood(food);
		String ftype = request.getParameter("ftype");
		
		
		if(cnt>0) {
			response.sendRedirect("/gyeongju/GetFood.do?ftype="+ftype+"&fno="+food.getFno());
		} else {
			response.sendRedirect("/gyeongju/FoodUpdate.do?ftype="+ftype+"&fno="+food.getFno());
		}
	}

}
