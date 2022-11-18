-- 모든 분의 정상작동을 위해 system계정에 테이블을 생성해주세요

create table seatlist_info(
s_seat varchar(10) primary key check(s_seat in ('A-1','C-1','D-1','F-1','A-2','C-2','D-2','F-2','A-3','C-3','D-3','F-3','A-4','B-4','C-4','D-4','E-4','F-4','A-5','B-5','C-5','D-5','E-5','F-5','A-6','B-6','C-6','D-6','E-6','F-6','A-7','B-7','C-7','D-7','E-7','F-7','A-8','B-8','C-8','D-8','E-8','F-8','A-9','B-9','C-9','D-9','E-9','F-9','A-10','B-10','C-10','D-10','E-10','F-10','A-11','B-11','C-11','D-11','E-11','F-11')),
s_price number(10) not null check(s_price in (100000, 200000))
);
commit;

desc seatlist_info;

create table member_info(
m_id varchar(30) primary key,
m_pw varchar(40) not null,
m_name varchar(15) not null,
m_socialcode varchar(40) unique not null,
m_email varchar(50) unique,
m_tel varchar(40) unique not null,
m_answer varchar(1000) not null
);
commit;

desc member_info;

create table airlist_info(
a_airno varchar(1000) primary key,
a_depart_site varchar(10) not null check(a_depart_site in('인천','김포','제주','부산','여수')),
a_depart_date date not null,
a_depart_time varchar(20) not null,
a_arrival_site varchar(10) not null check(a_arrival_site in('인천','김포','제주','부산','여수')),
a_arrival_date date not null,
a_arrival_time varchar(20) not null,
a_seat varchar(10) references seatlist_info
);
commit;
desc airlist_info;

create table reservation_info(
r_reserno varchar(1030) primary key,
r_id varchar(30) references member_info(m_id),
r_airno varchar(1000) references airlist_info(a_airno),
r_reserdate date not null
);
commit;
desc reservation_info;

--ALTER table reservation_info  MODIFY (r_reserno varchar(10030));
--ALTER table seatlist_info MODIFY (s_seat varchar(10) check(s_seat in ('A-1','C-1','D-1','F-1','A-2','C-2','D-2','F-2','A-3','C-3','D-3','F-3','A-4','B-4','C-4','D-4','E-4','F-4','A-5','B-5','C-5','D-5','E-5','F-5','A-6','B-6','C-6','D-6','E-6','F-6','A-7','B-7','C-7','D-7','E-7','F-7','A-8','B-8','C-8','D-8','E-8','F-8','A-9','B-9','C-9','D-9','E-9','F-9','A-10','B-10','C-10','D-10','E-10','F-10','A-11','B-11','C-11','D-11','E-11','F-11')));
