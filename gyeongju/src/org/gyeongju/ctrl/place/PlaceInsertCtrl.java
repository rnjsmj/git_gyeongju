package org.gyeongju.ctrl.place;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gyeongju.dao.PlaceDAO;
import org.gyeongju.dto.Place;

@WebServlet("/PlaceInsert.do")
public class PlaceInsertCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PlaceInsertCtrl() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Place place = new Place();
		place.setPname(request.getParameter("pname"));
		place.setPtype(request.getParameter("ptypeval"));
		place.setPtel(request.getParameter("ptel"));
		place.setPaddr(request.getParameter("paddr"));
		place.setPcomm(request.getParameter("pcomm"));
		//파일 추가
		
		PlaceDAO dao = new PlaceDAO();
		int cnt = dao.insertPlace(place);
		String ptype = request.getParameter("ptype");
		
		if(cnt>0) {
			response.sendRedirect("/gyeongju/PlaceList.do?ptype=all");
		} else {
			response.sendRedirect("/gyeongju/place/insertPlace.jsp?ptype="+ptype);
		}
	}

}
