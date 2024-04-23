package org.gyeongju.dao;

public interface SqlLang {
	//식도락
	String SELECT_ALL_FOOD = "select * from food order by no desc";
	String SELECT_FOOD_BYNO = "select * from food where no=?";
	String SELECT_FOOD_REST = "select * from food where ftype='음식점' order by no desc";
	String SELECT_FOOD_CAFE = "select * from food where ftype='카페' order by no desc";
	String SELECT_FOOD_ETC = "select * from food where ftype='기타' order by no desc";
	String UPD_FOOD = "update food set fname=?, ftype=?, ftel=?, faddr=?, fcomm=? where no=?";
	String INS_FOOD = "insert into food values(fd_seq.nextval, ?, ?, ?, ?, null, ?, null)";
	String DEL_FOOD = "delete from food where no=?";
}
