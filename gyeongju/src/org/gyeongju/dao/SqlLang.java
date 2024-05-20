package org.gyeongju.dao;

public interface SqlLang {
	//식도락
	//String SELECT_ALL_FOOD = "select * from food order by fno desc";
	String SELECT_ALL_FOOD = "select b.* from (select rownum as rnum, a.* from ( select * from food order by fno desc ) a ) b where b.rnum between ? and ?";
	String SELECT_FOOD_BYNO = "select * from food where fno=?";
	String SELECT_FOOD_REST = "select b.* from (select rownum as rnum, a.* from ( select * from food where ftype='음식점' order by fno desc ) a ) b where b.rnum between ? and ?";
	String SELECT_FOOD_CAFE = "select b.* from (select rownum as rnum, a.* from ( select * from food where ftype='카페' order by fno desc ) a ) b where b.rnum between ? and ?";
	String SELECT_FOOD_ETC = "select b.* from (select rownum as rnum, a.* from ( select * from food where ftype='기타' order by fno desc ) a ) b where b.rnum between ? and ?";
	String UPD_FOOD = "update food set fname=?, ftype=?, ftel=?, faddr=?, fcomm=? where fno=?";
	String INS_FOOD = "insert into food values(fd_seq.nextval, ?, ?, ?, ?, null, ?, ?)";
	String DEL_FOOD = "delete from food where fno=?";
	String CNT_ALL_FOOD = "select count(*) from food";
	
	//여기어때
	String SELECT_ALL_PLACE = "select b.* from (select rownum as rnum, a.* from ( select * from place order by pno desc ) a ) b where b.rnum between ? and ?";
	String SELECT_PLACE_BYNO = "select * from place where pno=?";
	String SELECT_PLACE_CULTURAL = "select b.* from (select rownum as rnum, a.* from ( select * from place where ptype='문화재' order by pno desc ) a ) b where b.rnum between ? and ?";
	String SELECT_PLACE_THEME = "select b.* from (select rownum as rnum, a.* from ( select * from place where ptype='테마파크/공원' order by pno desc ) a ) b where b.rnum between ? and ?";
	String SELECT_PLACE_ETC = "select b.* from (select rownum as rnum, a.* from ( select * from place where ptype='기타' order by pno desc ) a ) b where b.rnum between ? and ?";
	String UPD_PLACE = "update place set pname=?, ptype=?, ptel=?, paddr=?, pcomm=?, item=? where pno=?";
	String INS_PLACE = "insert into place values(plc_seq.nextval, ?, ?, ?, ?, null, ?, ?, ?)";
	String DEL_PLACE = "delete from place where pno=?";
	String CNT_ALL_PLACE = "select count(*) from place";
	
	//회원관리
	String SELECT_ALL_MEMBER = "select * from member order by regdate desc";
	String SELECT_ONE_MEMBER = "select * from member where id=?";
	String INS_MEMBER = "insert into member values(?, ?, ?, ?, ?, ?, default)";
	String UPD_MEMBER = "update member set pw=?, email=?, tel=?, postcode=?, address=? where id=?";
	String DEL_MEMBER = "delete from member where id=?";
	
	//커뮤니티
	//문의하기
	String SELECT_ALL_QNA = "select * from community where not aid='admin' order by resdate desc";
	//공지사항
	String SELECT_ALL_NOTICE = "select * from community where aid='admin' order by resdate desc";
	String LATEST_NOTICE = "select * from (select rownum as rnum, community.* from community where aid='admin' order by bno desc) where rnum <= 4";
	//공용
	String SELECT_COMMUNITY_BYNO = "select * from community where bno=?";
	String INS_COMMUNITY = "insert into community values(comm_seq.nextval, ?, ?, ?, ?, default, 0)";
	String UPD_COMMUNITY = "update community set title=?, content=? where bno=?";
	String DEL_COMMUNITY = "delete from community where bno=?";
	String VISITED_UPD_COMMUNITY = "update community set visited=visited+1 where bno=?";
}
