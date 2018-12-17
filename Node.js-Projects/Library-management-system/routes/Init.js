'use strict';
const HTM={
	begin:'<html><head><META HTTP-EQUIV="Content-Type" Content="text-html; charset=utf-8"></head><body>',
    end:'</body></html>',
    success:"<div id='result' style='display:none'>0</div>",
    error_1_1:"<div id=\'result\' style=\'display:none\'>1</div>",
};
const db=require("../coSqlite3");


exports.init=function*(req,res){
    //尝试进行初始化
    try{
        let book=yield db.execSQL("create table book(bID varchar(30) not null,bName varchar(30) not null,bPub varchar(30) not null,bDate datetime not null,bAuthor varchar(20) not null,bMem varchar(30),bCnt integer not null,bTotal integer not null,primary key(bID))");
        let reader=yield db.execSQL("create table reader(rID varchar(8) not null,rName varchar(10) not null,rSex char(2) not null,rDept varchar(10) not null,rGrade integer not null,primary key(rID))");
        let borrow=yield db.execSQL("create table borrow(bID varchar(30) not null,rID varchar(8) not null,borrowTime datetime not null,foreign key(bID) references book(bID),foreign key(rID) references reader(rID))");
        return HTM.begin+HTM.success+"成功"+HTM.end;
    }
    catch(e){
        return HTM.begin+HTM.error_1_1+"数据库已经被初始化，初始化失败"+HTM.end;
    }
};
