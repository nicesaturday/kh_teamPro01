use jeonju;
    
    drop table main_attraction;
create table main_attraction(no int auto_increment primary key ,  name varchar(500) not null, m_level int not null unique, locate varchar(2000) , visited int default 0);
desc main_attraction;


    drop table enjoying;
create table enjoying(no int auto_increment primary key, name varchar(500) not null unique , e_level int not null , locate varchar(1000) , visited int default 0);
    desc enjoying;
    
    drop table traffic;
create table traffic(no int auto_increment primary key, num varchar(500) not null unique , t_level int not null , comment varchar(2000) , route varchar(2000));
    desc traffic;
    
    drop table notice;
create table notice(no int auto_increment primary key, title varchar(1000) not null, comment varchar(2000) not null , resdate datetime default now() , visited int default 0);
    desc notice;
    
    drop table shopping;
create table shopping(no int auto_increment primary key, name varchar(500) not null , price int not null , comment varchar(2000) , s_level int not null);
    desc shopping;
    
    drop table lodgment;
create table lodgment(no int auto_increment primary key, name varchar(500) not null  , l_level int not null , locate varchar(1000), comment varchar(2000) , price int not null);
    desc lodgment;
    
    
    drop table user;
create table user(no int auto_increment primary key, id varchar(500) not null unique, name varchar(500) not null unique, pw int not null , email varchar(1000) not null , phone_num varchar(300) default '¾øÀ½' , address varchar(1000) );    
   desc user;
   
   
   drop table tourism;
create table tourism(no int auto_increment primary key, name varchar(500) not null , price int not null , locate varchar(500) not null , comment varchar(1000) , visited int default 0); 
  desc tourism;
   
  
  drop table t_bought;
create table t_bought(no int auto_increment primary key , staydate date not null, resdate datetime default now() , user_no int not null , t_no int not null , foreign key (user_no) references user(no) ,foreign key (t_no) references tourism(no));
  desc t_bought;

  
  
  drop table qna;
create table qna(no int auto_increment primary key , user_no int not null, title varchar(1000) not null , comment varchar(2000) not null , q_level int not null , parno int ,resdate datetime default now() , visited int default 0 , foreign key (user_no) references user(no) );
  desc qna;
  
  
  