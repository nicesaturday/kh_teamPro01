

-- 주요 명소
    drop table main_attraction;
create table main_attraction(no int auto_increment primary key, name varchar(500) not null, locate varchar(500) , comment varchar(2000) , img varchar(300),sub_img1 varchar(300),sub_img2 varchar(300) , tel varchar(100) , period varchar(200) , homepage varchar(1000) , sub1 varchar(200) , sub2 varchar(200));
desc main_attraction;



    
    
--    drop table shopping;
--create table shopping(no int auto_increment primary key, name varchar(500) not null , price int not null , comment varchar(2000) , s_level int not null);
--    desc shopping;

-- 문화 시설
    drop table cultural_facilities;
create table cultural_facilities(no int auto_increment primary key, name varchar(500) not null, locate varchar(500) , comment varchar(2000) , img varchar(300),sub_img1 varchar(300),sub_img2 varchar(300) , tel varchar(100) , period varchar(200) , homepage varchar(1000) , sub1 varchar(200) , sub2 varchar(200));
    desc cultural_facilities;
insert into cultural_facilities values(default , '전주역사박물관' ,  '전주시 완산구 쑥고개로 259' , 
'2002년5월 개관한 이래 전주의 역사와 문화 관련1만여점 이상의 유물을 수집·관리·연구·전시한 박물관이다. 지역의 콘텐츠를 발굴하여 시민들에게 지역의 자긍심과 정체성을 확립할 수 있도록 다양한 교육 프로그램을 운영하고 있다.' , 'img/cultural/jeonjuhismuse.jpg' ,'img/cultural/jeonjuhismuse1.jpg','img/cultural/jeonjuhismuse2.png' ,'063-228-6485' , ' 09:00 ~ 18:00' , 'https://e.jeonju.go.kr/home/SubPage.html?CID=pages-com01_view.php&&listtype=1&co_gubun=&co_id=30' , '관람 종료 30분 전까지 입장하셔야 관람 가능합니다.' , '매주 월요일, 1월 1일.월요일이 공휴일일 시 화요일 휴무');
insert into cultural_facilities values(default , '전주빙상경기장' ,  ' 전주시 완산구 백제대로 310 (중화산동2가, 화산체육관)' , 
'변화무쌍한 날씨에도 아이들과 혹은 연인과 즐길 수 있는 전주 빙상경기장은 안전한 시설뿐만 아니라 저렴한 이용료와 대여료로 편히 즐길 수 있습니다.' , 'img/cultural/bingsan.jpg' ,'img/cultural/bingsan1.png','img/cultural/bingsan2.png' ,'063-239-2578' , ' 09:00 ~ 18:00' , 'http://www.jbsports.or.kr/site/menu/MENU_000000000000061' , '*설, 추석 명절 전일 및 당일 휴무' , '대여실에서 나에게 맞는 스케이트를 대여하며, 신발과 지갑 등 물품은 물품보관함을 통해 보관할 수 있습니다.
스케이트장 입장은 안전을 위해 헬멧과 장갑 착용 후 가능합니다. 헬멧은 대여실 앞에서 무료로 이용가능하며, 건조기를 통해 살균 건조되어 관리되고 있어 안심하고 사용할 수 있습니다. 장갑은 개인적으로 준비하거나 매점에서 쉽게 구매할 수 있습니다.');
insert into cultural_facilities values(default , '전주천년한지관' ,  '전주시 완산구 흑석로 85 (서서학동, 전주천년한지관)' , 
'전주천년한지관은 전통한지 계승과 보전, 문화확산을 위한 거점공간으로서 국내 최대 한지제조시설을 보유한 한지복합문화공간입니다. 누구나 한지를 배우고 경험할 수 있는 전통한지 제조교육과 생활속 한지예술, 전주한지 복원연구와 한지 문화기획 등 한지의 깊이와 너비를 전달하고자 하는 전통한지 거점공간입니다.' , 'img/cultural/hanji.png' ,'img/cultural/hanji1.png','img/cultural/hanji2.png' ,'063-281-1630' , '' , 'http://www.jmhm.kr/main/' , '' , '');
insert into cultural_facilities values(default , '전주한옥마을역사관' ,  '전주시 완산구 최명희길 17-10' , 
'전주한옥마을의 역사는 건물에만 있는 것이 아니다. 이곳을 살았던 사람들의 소소한 이야기, 길가의 나무와 꽃, 골목의 바람과 햇살, 마당가 우물의 깊은 바닥에도 한옥마을의 역사가 숨쉬고 있다. 대한민국에서 유일하게 보존되어 있는 900여채의 전주한옥마을은 어떻게 생겨나고 이어져서 오늘에 이르렀을까?
전주한옥마을역사관에서 한옥마을의 역사와 이야기를 들으며 VR로 가상현실도 체험해 보자. ' , 'img/cultural/hanokhi.png' ,'img/cultural/hanokhi1.png','img/cultural/hanokhi2.png' ,'063-286-5125' , '매주 화요일~일요일 10:00~18:00 (월요일 휴관)' , '#' , '정기해설 , 수시해설 있음' , '');
    delete from cultural_facilities where no = 4;
    
    
    
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
   select * from user;
   delete from user where no = 5;
   
   drop table tourism;
create table tourism(no int auto_increment primary key, c_id int not null ,name varchar(500) not null , start_locate varchar(500) not null , lang varchar(1000) , course varchar(2000) , max_headcount int default 20 , need_time int default 1 , when_time int not null); 

-- 1
insert into tourism values(default , 1 ,'경기전 역사투어' , '티켓 별도 구입 후 경기전 안 출발지 표시판' , '한·영·중·일 (매일 11시, 14시) / 한국어 (매일 10시, 11시, 14시, 15시, 16시)'  , '홍살문 > 외삼문 > 내삼문 > 진전(태조어진) > 전주사고 > 예종대왕 태실 및 비' , 3 , 1 , 10);
insert into tourism values(default , 1 ,'경기전 역사투어' , '티켓 별도 구입 후 경기전 안 출발지 표시판' , '한·영·중·일 (매일 11시, 14시) / 한국어 (매일 10시, 11시, 14시, 15시, 16시)'  , '홍살문 > 외삼문 > 내삼문 > 진전(태조어진) > 전주사고 > 예종대왕 태실 및 비' , 20 , 1 , 11);
insert into tourism values(default , 1 ,'경기전 역사투어' , '티켓 별도 구입 후 경기전 안 출발지 표시판' , '한·영·중·일 (매일 11시, 14시) / 한국어 (매일 10시, 11시, 14시, 15시, 16시)'  , '홍살문 > 외삼문 > 내삼문 > 진전(태조어진) > 전주사고 > 예종대왕 태실 및 비' , 20 , 1 , 14);
insert into tourism values(default , 1 ,'경기전 역사투어' , '티켓 별도 구입 후 경기전 안 출발지 표시판' , '한·영·중·일 (매일 11시, 14시) / 한국어 (매일 10시, 11시, 14시, 15시, 16시)'  , '홍살문 > 외삼문 > 내삼문 > 진전(태조어진) > 전주사고 > 예종대왕 태실 및 비' , 20 , 1 , 15);
insert into tourism values(default , 1 ,'경기전 역사투어' , '티켓 별도 구입 후 경기전 안 출발지 표시판' , '한·영·중·일 (매일 11시, 14시) / 한국어 (매일 10시, 11시, 14시, 15시, 16시)'  , '홍살문 > 외삼문 > 내삼문 > 진전(태조어진) > 전주사고 > 예종대왕 태실 및 비' , 20 , 1 , 16);

update tourism set max_headcount = 3 where no = 1;
update tourism set max_headcount = 2 where no = 2;

insert into tourism values(default , 2 ,'향교 선비길 투어' , '오목대 관광안내소 옆 출발지 표시판' , '한국어 (매일 10시)'  , '오목대 관광안내소 > 당산나무 > 양사재 > 전통문화연수원(장현식고택) > 전주향교 > 향교길 > 남천교 청연루' , 20 , 1 , 10);

insert into tourism values(default , 3 ,'태조 이성계 로드 투어' , '오목대 관광안내소 옆 출발지 표시판' , '한국어 (매일 14시)'  , '오목대 관광안내소 > 태조로쉼터 다음 오목대 > 자만벽화마을 > 이목대 > 최담 유허비 > 한벽당' , 20 , 1 , 14);

insert into tourism values(default , 4 ,'한옥마을 골목길 투어' , '경기전 관광안내소 앞 출발지 표시판' , '한·영·중·일 (매일 15시), 한·영(매일 11시, 15시)'  , '전동성당 > 태조로 > 부채문화관&최명희문학관 > 은행로 > 600년 은행나무 > 승광재 > 한지길 > 전통한지원 > 오목대 관광안내소' , 20 , 1 , 11);
insert into tourism values(default , 4 ,'한옥마을 골목길 투어' , '경기전 관광안내소 앞 출발지 표시판' , '한·영·중·일 (매일 15시), 한·영(매일 11시, 15시)'  , '전동성당 > 태조로 > 부채문화관&최명희문학관 > 은행로 > 600년 은행나무 > 승광재 > 한지길 > 전통한지원 > 오목대 관광안내소' , 20 , 1 , 15);

insert into tourism values(default , 5 ,'전라감영 정기해설투어' , '전라감영 정문 앞 출발지 표시판' , '한·영 (매일 11시, 14시) / 한국어 (매일 11시, 14시, 16시)'  , '내삼문 > 선화당 > 내아 행랑채 > 내아 > 연신당 > 관풍각' , 20 , 1 , 11);
insert into tourism values(default , 5 ,'전라감영 정기해설투어' , '전라감영 정문 앞 출발지 표시판' , '한·영 (매일 11시, 14시) / 한국어 (매일 11시, 14시, 16시)'  , '내삼문 > 선화당 > 내아 행랑채 > 내아 > 연신당 > 관풍각' , 20 , 1 , 14);
insert into tourism values(default , 5 ,'전라감영 정기해설투어' , '전라감영 정문 앞 출발지 표시판' , '한·영 (매일 11시, 14시) / 한국어 (매일 11시, 14시, 16시)'  , '내삼문 > 선화당 > 내아 행랑채 > 내아 > 연신당 > 관풍각' , 20 , 1 , 16);

insert into tourism values(default , 6 ,'전주부성 옛길투어 1코스' , '풍남문 (전라감영 방향 풍남문 출발지 표시판)' , '한국어 (매일 10시 , 15시)'  , '풍남문 > 고물자 골목 > 공익질옥 > 수다작 > 미래유산 행원 > 유기방 > 필방 > 고미술거리 > 완산경찰서 > 전라감영' , 20 , 1 , 10);
insert into tourism values(default , 6 ,'전주부성 옛길투어 1코스' , '풍남문 (전라감영 방향 풍남문 출발지 표시판)' , '한국어 (매일 10시 , 15시)'  , '풍남문 > 고물자 골목 > 공익질옥 > 수다작 > 미래유산 행원 > 유기방 > 필방 > 고미술거리 > 완산경찰서 > 전라감영' , 20 , 1 , 15);

  desc tourism;
  select * from tourism;
   
  
  drop table t_bought;
create table t_bought(no int auto_increment primary key , start_time varchar(100) not null, resdate datetime default now() ,headcount int not null , user_no int not null , t_no int not null , foreign key (user_no) references user(no) on delete cascade on update cascade ,foreign key (t_no) references tourism(no) on delete cascade on update cascade);
  desc t_bought;
  delete from t_bought where no = 4;
  select * from t_bought;

  
  
  drop table qna;
create table qna(no int auto_increment primary key , user_name varchar(500) not null, title varchar(1000) not null , comment varchar(2000) not null , q_level int not null , parno int ,resdate datetime default now() , visited int default 0 ,  foreign key (user_name) references user(name) on delete cascade on update cascade  );
insert into qna values(default , "김두한" , "hi" , "yes",1 , 1  , default , default );
insert into qna values(default , 1 , "hi" , "yes" , 1 , 0 , default , default );
insert into qna values(default , 1 , "hi" , "yes" , 1 , 0 , default , default );
  desc qna;
  select * from qna;
  UPDATE qna AS q1 JOIN (SELECT no FROM qna ORDER BY no DESC LIMIT 1) AS q2 ON q1.no = q2.no SET q1.parno = q2.no;
  
      drop table notice;
create table notice(no int auto_increment primary key, name varchar(200) default '관리자' , title varchar(1000) not null, comment varchar(2000) not null , resdate datetime default now() , visited int default 0);
insert into notice values(default ,default , "hi1" , "hi1" , default , default );
select * from notice;
    desc notice;
  