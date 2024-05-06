package org.gyeongju.dao;

public interface SqlLang {
	//식도락
	String SELECT_ALL_FOOD = "select * from food order by fname";
	String SELECT_FOOD_BYNO = "select * from food where fno=?";
	String SELECT_FOOD_REST = "select * from food where ftype='음식점' order by fname";
	String SELECT_FOOD_CAFE = "select * from food where ftype='카페' order by fname";
	String SELECT_FOOD_ETC = "select * from food where ftype='기타' order by fname";
	String UPD_FOOD = "update food set fname=?, ftype=?, ftel=?, faddr=?, fcomm=? where fno=?";
	String INS_FOOD = "insert into food values(fd_seq.nextval, ?, ?, ?, ?, null, ?, null)";
	String DEL_FOOD = "delete from food where fno=?";
	
	//여기어때
	String SELECT_ALL_PLACE = "select * from place order by pname";
	String SELECT_PLACE_BYNO = "select * from place where pno=?";
	String SELECT_PLACE_CULTURAL = "select * from place where ptype='문화재' order by pname";
	String SELECT_PLACE_THEME = "select * from place where ptype='테마파크' order by pname";
	String SELECT_PLACE_BEACH = "select * from place where ptype='해변' order by pname";
	String UPD_PLACE = "update place set pname=?, ptype=?, ptel=?, paddr=?, pcomm=? where pno=?";
	String INS_PLACE = "insert into place values(plc_seq.nextval, ?, ?, ?, ?, null, ?, null)";
	String DEL_PLACE = "delete from place where pno=?";
}
