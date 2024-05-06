package org.gyeongju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.gyeongju.dto.Place;

public class PlaceDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//장소 목록
	public List<Place> getPlaceList() {
		List<Place> placeList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_PLACE);
			rs = pstmt.executeQuery();
			
		while(rs.next()) {
				Place place = new Place(rs.getInt("pno"),
						rs.getString("pname"),
						rs.getString("ptype"),
						rs.getString("ptel"),
						rs.getString("paddr"),
						rs.getString("pcomm")
						);
				placeList.add(place);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		
		return placeList;
	}
	
	//문화재 목록
	public List<Place> getCurturalList() {
		List<Place> curturalList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_PLACE_CULTURAL);
			rs = pstmt.executeQuery();
			
		while(rs.next()) {
				Place place = new Place(rs.getInt("pno"),
						rs.getString("pname"),
						rs.getString("ptype"),
						rs.getString("ptel"),
						rs.getString("paddr"),
						rs.getString("pcomm")
						);
				curturalList.add(place);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		
		return curturalList;
	}
	
	//테마파크 목록
	public List<Place> getThemeList() {
		List<Place> themeList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_PLACE_THEME);
			rs = pstmt.executeQuery();
			
		while(rs.next()) {
				Place place = new Place(rs.getInt("pno"),
						rs.getString("pname"),
						rs.getString("ptype"),
						rs.getString("ptel"),
						rs.getString("paddr"),
						rs.getString("pcomm")
						);
				themeList.add(place);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		
		return themeList;
	}
	
	//해변 목록
	public List<Place> getBeachList() {
		List<Place> beachList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_PLACE_BEACH);
			rs = pstmt.executeQuery();
			
		while(rs.next()) {
				Place place = new Place(rs.getInt("pno"),
						rs.getString("pname"),
						rs.getString("ptype"),
						rs.getString("ptel"),
						rs.getString("paddr"),
						rs.getString("pcomm")
						);
				beachList.add(place);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		
		return beachList;
	}
	
	
	//장소 상세보기
	public Place getPlace(int pno) {
		Place place = new Place();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			
			pstmt = con.prepareStatement(SqlLang.SELECT_PLACE_BYNO);
			pstmt.setInt(1, pno);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				place.setPno(rs.getInt("pno"));
				place.setPname(rs.getString("pname"));
				place.setPtype(rs.getString("ptype"));
				place.setPtel(rs.getString("ptel"));
				place.setPaddr(rs.getString("paddr"));
				place.setPcomm(rs.getString("pcomm"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return place;
	}
	
	//장소 등록
	public int insertPlace(Place place) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.INS_PLACE);
			pstmt.setString(1, place.getPname());
			pstmt.setString(2, place.getPtype());
			pstmt.setString(3, place.getPtel());
			pstmt.setString(4, place.getPaddr());
			pstmt.setString(5, place.getPcomm());
			cnt = pstmt.executeUpdate();
			
			//파일 처리 추가
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	//장소 수정
	public int updatePlace(Place place) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			//String UPD_FOOD = "update place set pname=?, ptype=?, ptel=?, paddr=?, pcomm=? where pno=?";
			pstmt = con.prepareStatement(SqlLang.UPD_PLACE);
			pstmt.setString(1, place.getPname());
			pstmt.setString(2, place.getPtype());
			pstmt.setString(3, place.getPtel());
			pstmt.setString(4, place.getPaddr());
			pstmt.setString(5, place.getPcomm());
			pstmt.setInt(6, place.getPno());
			cnt = pstmt.executeUpdate();
			
			//파일 처리 추가
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	//장소 삭제
	public int deletePlace(int pno) {
		int cnt = 0;
		OracleDB mysql = new OracleDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_PLACE);
			pstmt.setInt(1, pno);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
}
