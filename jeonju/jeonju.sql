

-- 주요 명소
    drop table main_attraction;
create table main_attraction(no int auto_increment primary key ,  name varchar(500) not null, tel varchar(500), locate varchar(2000) , img varchar(300), comment varchar(2000) ,visited int default 0);
desc main_attraction;


    
    
--    drop table shopping;
--create table shopping(no int auto_increment primary key, name varchar(500) not null , price int not null , comment varchar(2000) , s_level int not null);
--    desc shopping;

-- 문화 시설
    drop table cultural_facilities;
create table cultural_facilities(no int auto_increment primary key, name varchar(500) not null , locate varchar(1000), tel varchar(100), img varchar(300), comment varchar(2000), visited int default 0 );
    desc cultural_facilities;
    
-- 숙박
    drop table lodgment;
create table lodgment(no int auto_increment primary key, name varchar(500) not null, locate varchar(500), homepage varchar(500) , comment varchar(2000) , img varchar(300) , tel varchar(100) , visited int default 0);
    desc lodgment;

-- 축제
    drop table festival;
create table festival(no int auto_increment primary key, name varchar(500) not null, locate varchar(500) , comment varchar(2000) , img varchar(300),sub_img1 varchar(300),sub_img2 varchar(300) , tel varchar(100) , period varchar(200) , homepage varchar(1000) , sub1 varchar(200) , sub2 varchar(200));
    desc festival;
insert into festival values(default , '전주대사습놀이' ,  '전주대사습청, 국립무형유산원 외' , 
'대한민국 전통문화가 살아 숨 쉬는 예향의 고장인 전주에서 국악축제가 펼쳐진다. ''사습놀이''란 조선 숙종때의 마상궁술대회와 영조때의 물놀이와 판소리, 백일장 등 민속무예놀이를 일컫던 말이다. 영조 8년(1732년) 지방 재인청(신청)과 가무 대사습청의 설치에 따라 전주에 4개정(군사정, 의방정, 다기정, 진북정)을 두었고,
최초로 대사습대회가 베풀어진 뒤 매년 연례행사로 실시되었다.' , 'img/festival/sasup.jpg' ,'img/festival/sasup1.png','img/festival/sasup2.png' ,'0' , ' 2024. 05.18(토) ~ 06.03(월)' , 'https://www.jjdss.or.kr/' , ' 전주시, (사)전주대사습놀이보존회, ㈜문화방송, 전주MBC' , ' 전주시, (사)전주대사습놀이보존회, ㈜문화방송, 전주MBC'
)
insert into festival values(default , '전주세계소리축제' ,  '한국소리문화의전당, 전북특별자치도 14개 시·군' , 
'전주세계소리축제는 우리 전통음악인 판소리에 근간을 두고 세계음악과 벽을 허물고, 특정 음악 장르에 치우치지 않고 각 분야별 세계적인 명성을 얻고 있는 마스터급 아티스트 공연까지 다양한 공연을 한자리에서 느낄 수 있는 고품격 세계음악예술제다.
예로부터 전북특별자치도는 ‘소리(판소리)’의 유구한 전통과 역사, 인물, 그리고 귀명창이라고 부르는 관객들의 두터운 소리 인프라를 지니고 있다. 이 ‘소리’ 자산은 전북특별자치도를 대표하는 가장 중요한 문화적 자원으로 이해되고 발전시켜야 할 과제이고, 소리축제는 이러한 미션을 수행하는 전진기지다.
이는 판소리에 국한되는 것은 아니다. 지금도 전 세계 동시대를 사는 음악가들이 자신들의 전통음악을 보존하거나 혁신을 시도하면서 끊임없이 고민하고 치열하게 매달린 결과물을 만날 수 있는 자리이기도 하다.
전통 혹은 각 나라 민속음악의 현재의 흐름. 미래의 경향을 들여다보고 비교하는 자리. 그것이 소리축제가 가지고 있는 기본테마라 할 수 있겠다. 전통이 곧 미래이다.' , 'img/festival/sague.jpg' ,'img/festival/sague1.png','img/festival/sague2.png' ,'0' , '2024. 08.14(수) ~ 08.18(일)' , 'https://www.sorifestival.com/2023html/rep_korean/' , '전북특별자치도, 전주세계소리축제조직위' , '전주시 덕진구 소리로 31 한국소리문화의전당 국제회의장 1층 (063-232-8398)'
)
insert into festival values(default , '한복문화주간' ,  '한국전통문화전당, 전주시 일원' , 
'한복문화주간은 우리의 멋과 전통이 담긴 한복을 널리알리고 일상 속에 한복 입는 문화를 확산하기 위해 열리는 전국 단위의 행사다.
전주시는 2019년 한복문화주간을 시작으로 매년 한복문화주간에 참여해왔으며 2023년 한복문화주간은
2022년 조성된 지역 한복문화 창작소를 중심으로 공연, 교육, 포토존, 체험 프로그램 등 다양한 한복 문화행사를 운영할 예정이다.' , 'img/festival/hanbokfes.jpg' ,'img/festival/hanbokfes1.png','img/festival/hanbokfes2.png' ,'0' , '2023. 10. 16.(월) ~ 2023. 10. 22.(일)' , '#' , '전주시 / (재)한국전통문화전당' , '전주시 / (재)한국전통문화전당 (063-281-2931)'
)
select * from festival;
delete from festival where no = 1;
    
    
    
    
    
    
    
    drop table user;
create table user(no int auto_increment primary key, id varchar(500) not null unique, name varchar(500) not null unique, pw varchar(500) not null , email varchar(1000) not null , phone_num varchar(300) not null , address varchar(1000) not null , resdate datetime default now() );    
   desc user;
   alter table user modify pw varchar(500) not null;
   alter table user modify phone_num varchar(300) not null;
   alter table user add resdate datetime default now();
   insert into user values(default , "nice" , "yes" , "1234" , "sasa" , "010" , "t" , default);
   desc user;
   
   drop table tourism;
create table tourism(no int auto_increment primary key, name varchar(500) not null , start_locate varchar(500) not null , lang varchar(1000) , course varchar(2000) , max_headcount int default 20 , need_time int default 1); 
  desc tourism;
   
  
  drop table t_bought;
create table t_bought(no int auto_increment primary key , start_time varchar(100) not null, resdate datetime default now() ,headcount int not null , user_no int not null , t_no int not null , foreign key (user_no) references user(no) on delete cascade on update cascade ,foreign key (t_no) references tourism(no) on delete cascade on update cascade);
  desc t_bought;

  
  
  drop table qna;
create table qna(no int auto_increment primary key , user_name varchar(500) not null, title varchar(1000) not null , comment varchar(2000) not null , category int not null  ,q_level int not null , parno int ,resdate datetime default now() , visited int default 0 ,  foreign key (user_name) references user(name) on delete cascade on update cascade  );
insert into qna values(default , 1 , "hi" , "yes" , 1 , 0 , default , default );
insert into qna values(default , 1 , "hi" , "yes" , 1 , 0 , default , default );
insert into qna values(default , 1 , "hi" , "yes" , 1 , 0 , default , default );
  desc qna;
  select * from qna;
  UPDATE qna AS q1 JOIN (SELECT no FROM qna ORDER BY no DESC LIMIT 1) AS q2 ON q1.no = q2.no SET q1.parno = q2.no;
  
      drop table notice;
create table notice(no int auto_increment primary key, title varchar(1000) not null, comment varchar(2000) not null , resdate datetime default now() , visited int default 0);
    desc notice;
  