

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
create table lodgment(no int auto_increment primary key, locate varchar(500), homepage varchar(500) , comment varchar(2000) , img varchar(300) , tel varchar(100) , visited int default 0);
    desc lodgment;

    

    
    
    
    
    
    
    
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
  