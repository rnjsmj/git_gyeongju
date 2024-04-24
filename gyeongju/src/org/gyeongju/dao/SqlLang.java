package org.gyeongju.dao;

public interface SqlLang {
	//식도락
	String SELECT_ALL_FOOD = "select * from food order by fno desc";
	String SELECT_FOOD_BYNO = "select * from food where fno=?";
	String SELECT_FOOD_REST = "select * from food where ftype='음식점' order by fno desc";
	String SELECT_FOOD_CAFE = "select * from food where ftype='카페' order by fno desc";
	String SELECT_FOOD_ETC = "select * from food where ftype='기타' order by fno desc";
	String UPD_FOOD = "update food set fname=?, ftype=?, ftel=?, faddr=?, fcomm=? where fno=?";
	String INS_FOOD = "insert into food values(fd_seq.nextval, ?, ?, ?, ?, null, ?, null)";
	String DEL_FOOD = "delete from food where fno=?";
}
