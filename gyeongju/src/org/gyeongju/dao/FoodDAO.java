package org.gyeongju.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.gyeongju.dto.Food;

public class FoodDAO {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//식도락 목록
	public List<Food> getFoodList() {
		List<Food> foodList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_ALL_FOOD);
			rs = pstmt.executeQuery();
			
		while(rs.next()) {
				Food food = new Food(rs.getInt("fno"),
						rs.getString("fname"),
						rs.getString("ftype"),
						rs.getString("ftel"),
						rs.getString("faddr"),
						rs.getString("fcomm")
						);
				foodList.add(food);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		
		return foodList;
	}
	
	//음식점 목록
	public List<Food> getRestList() {
		List<Food> restList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_FOOD_REST);
			rs = pstmt.executeQuery();
			
		while(rs.next()) {
				Food food = new Food(rs.getInt("fno"),
						rs.getString("fname"),
						rs.getString("ftype"),
						rs.getString("ftel"),
						rs.getString("faddr"),
						rs.getString("fcomm")
						);
				restList.add(food);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		
		return restList;
	}
	
	//카페 목록
	public List<Food> getCafeList() {
		List<Food> cafeList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_FOOD_CAFE);
			rs = pstmt.executeQuery();
			
		while(rs.next()) {
				Food food = new Food(rs.getInt("fno"),
						rs.getString("fname"),
						rs.getString("ftype"),
						rs.getString("ftel"),
						rs.getString("faddr"),
						rs.getString("fcomm")
						);
				cafeList.add(food);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		
		return cafeList;
	}
	
	//기타 목록
	public List<Food> getEtcList() {
		List<Food> etcList = new ArrayList<>();
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.SELECT_FOOD_ETC);
			rs = pstmt.executeQuery();
			
		while(rs.next()) {
				Food food = new Food(rs.getInt("fno"),
						rs.getString("fname"),
						rs.getString("ftype"),
						rs.getString("ftel"),
						rs.getString("faddr"),
						rs.getString("fcomm")
						);
				etcList.add(food);
			}
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		
		return etcList;
	}
	
	
	//식도락 상세보기
	public Food getFood(int fno) {
		Food food = new Food();
		OracleDB oracle = new OracleDB();
		
		try {
			con = oracle.connect();
			
			pstmt = con.prepareStatement(SqlLang.SELECT_FOOD_BYNO);
			pstmt.setInt(1, fno);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				food.setFno(rs.getInt("fno"));
				food.setFname(rs.getString("fname"));
				food.setFtype(rs.getString("ftype"));
				food.setFtel(rs.getString("ftel"));
				food.setFaddr(rs.getString("faddr"));
				food.setFcomm(rs.getString("fcomm"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt, rs);
		}
		return food;
	}
	
	//식도락 등록
	public int insertFood(Food food) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			pstmt = con.prepareStatement(SqlLang.INS_FOOD);
			pstmt.setString(1, food.getFname());
			pstmt.setString(2, food.getFtype());
			pstmt.setString(3, food.getFtel());
			pstmt.setString(4, food.getFaddr());
			pstmt.setString(5, food.getFcomm());
			cnt = pstmt.executeUpdate();
			
			//파일 처리 추가
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	//식도락 수정
	public int updateFood(Food food) {
		int cnt = 0;
		OracleDB oracle = new OracleDB();
		try {
			con = oracle.connect();
			//String UPD_FOOD = "update food set fname=?, ftype=?, ftel=?, faddr=?, fcomm=? where no=?";
			pstmt = con.prepareStatement(SqlLang.UPD_FOOD);
			pstmt.setString(1, food.getFname());
			pstmt.setString(2, food.getFtype());
			pstmt.setString(3, food.getFtel());
			pstmt.setString(4, food.getFaddr());
			pstmt.setString(5, food.getFcomm());
			pstmt.setInt(6, food.getFno());
			cnt = pstmt.executeUpdate();
			
			//파일 처리 추가
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			oracle.close(con, pstmt);
		}
		return cnt;
	}
	
	//식도락 삭제
	public int deleteFood(int fno) {
		int cnt = 0;
		OracleDB mysql = new OracleDB();
		try {
			con = mysql.connect();
			pstmt = con.prepareStatement(SqlLang.DEL_FOOD);
			pstmt.setInt(1, fno);
			cnt = pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			mysql.close(con, pstmt);
		}
		return cnt;
	}
}
