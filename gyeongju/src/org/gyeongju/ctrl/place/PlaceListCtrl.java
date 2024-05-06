package org.gyeongju.ctrl.place;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gyeongju.dao.PlaceDAO;
import org.gyeongju.dto.Place;

@WebServlet("/PlaceList.do")
public class PlaceListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlaceListCtrl() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String ptype = request.getParameter("ptype");
		
		PlaceDAO dao = new PlaceDAO();
		List<Place> placeList = new ArrayList<>();
		
		if (ptype.equals("all")) {
			placeList = dao.getPlaceList();
		} else if (ptype.equals("curtural")) {
			placeList = dao.getCurturalList();
		} else if (ptype.equals("theme")) {
			placeList = dao.getThemeList();
		} else if (ptype.equals("beach")) {
			placeList = dao.getBeachList();
		} else {
		}
		
		
		request.setAttribute("placeList", placeList);
		request.setAttribute("ptype", ptype);
		
		RequestDispatcher view = request.getRequestDispatcher("/place/placeList.jsp");
		view.forward(request, response);
	}

}
