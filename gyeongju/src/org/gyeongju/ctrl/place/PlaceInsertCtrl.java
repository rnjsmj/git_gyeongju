package org.gyeongju.ctrl.place;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.gyeongju.dao.PlaceDAO;
import org.gyeongju.dto.Place;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		ServletContext application = request.getServletContext();
		
		try {
			String saveDirectory = application.getRealPath("/upload/place");
			int maxSize = 1024*1024*10;
			String encoding = "UTF-8";
			MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxSize, encoding, new DefaultFileRenamePolicy());
			
			place.setPname(request.getParameter("pname"));
			place.setPtype(request.getParameter("ptypeval"));
			place.setPtel(request.getParameter("ptel"));
			place.setPaddr(request.getParameter("paddr"));
			place.setPcomm(request.getParameter("pcomm"));
			//파일 추가
			Enumeration files = mr.getFileNames();
			String item = (String) files.nextElement();
			
			String oriFile = mr.getOriginalFileName(item);
			String fName = mr.getFilesystemName(item);
			File upfile = mr.getFile(item);
			place.setFilename(fName);

			PlaceDAO dao = new PlaceDAO();
			int cnt = dao.insertPlace(place);
			String ptype = request.getParameter("ptype");

			if(cnt>0) {
				response.sendRedirect("/gyeongju/PlaceList.do?ptype=all");
			} else {
				response.sendRedirect("/gyeongju/place/insertPlace.jsp?ptype="+ptype);
			}
		} catch(Exception e) {
			
		}
	}

}
