package org.gyeongju.dao;

public interface SqlLang {
	//�ĵ���
	String SELECT_ALL_FOOD = "select * from food order by fno desc";
	String SELECT_FOOD_BYNO = "select * from food where no=?";
	String SELECT_FOOD_REST = "select * from food where ftype='������' order by fno desc";
	String SELECT_FOOD_CAFE = "select * from food where ftype='ī��' order by fno desc";
	String SELECT_FOOD_ETC = "select * from food where ftype='��Ÿ' order by fno desc";
	String UPD_FOOD = "update food set fname=?, ftype=?, ftel=?, faddr=?, fcomm=? where fno=?";
	String INS_FOOD = "insert into food values(fd_seq.nextval, ?, ?, ?, ?, null, ?, null)";
	String DEL_FOOD = "delete from food where fno=?";
}
