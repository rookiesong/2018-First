'use strict';
const HTM={
	begin:'<html><head><META HTTP-EQUIV="Content-Type" Content="text-html; charset=utf-8"></head><body>',
    end:'</body></html>',
    success:"<div id='result' style='display:none'>0</div>",
    error_1_1:"<div id=\'result\' style=\'display:none\'>1</div>",
    error_2_1:"<div id='result' style='display:none'>1</div>",
    error_2_2:"<div id='result' style='display:none'>2</div>",
    error_2_3:"<div id='result' style='display:none'>3</div>",
    error_2_4:"<div id='result' style='display:none'>4</div>",
    error_2_5:"<div id='result' style='display:none'>5</div>",
    error_2_6:"<div id='result' style='display:none'>6</div>"
};
const db=require("../coSqlite3");
//判断日期的有效性，包括：1.格式2.日期是否存在3.日期不能到过当前系统日期
function isrightdate(date){
    //1.通过日期的正则表达式进行日期匹配测试
    if (date.indexOf("-") == -1) 
    return 0;
    //2.判断日期是否存在
    else{
        var DA = [0,31,28,31,30,31,30,31,31,30,31,30,31];
        var arrD=date.split("-")
        if (arrD.length != 3) return false;
        var y = parseInt(arrD[0], 10);
        var m = parseInt(arrD[1], 10);
        var d = parseInt(arrD[2], 10);
        // 判断月份是否在1-12之间
        if (m> 12||m<1) return 1;
        //判断是否是闰年
        if ((y%4==0)&&(y%100!=0||y%400==0)) DA[2] = 29;
        //判断当前输入的日是否超过了当月月份的总天数。
        if (d > DA[m]) return 2;
    }
    //3.判断出版日期是否超过了当前日期
    var now=new Date();
    var monthn=now.getMonth()+1;
    var yearn=now.getFullYear();
    var daten=now.getDate();
    if(y>yearn||(y==yearn&&m>monthn)||(y==yearn&&m==monthn&&d>daten))
    return 3;
};
//判断所借书籍是否超时,这里我们设置借书时间为1周。
function overtime(time){
    var now=Date.parse(new Date())/1000;
    //超时天数为1周
    if(((now-time)/86400)>=7)
    return true;
    else
    return false;
}
//将borrowTime转化为yyyy-mm-dd格式
function convert(time){
    var timecon=new Date(time*1000);
    var monthn=timecon.getMonth()+1;
    var yearn=timecon.getFullYear();
    var daten=timecon.getDate();
    return yearn+"-"+monthn+"-"+daten;
}

exports.addBook=function*(req,res){
    let body=req.body;
    body.bID=body.bID||'';
	body.bName=body.bName||'';
	body.bPub=body.bPub||'';
	body.bDate=body.bDate||'';
	body.bAuthor=body.bAuthor||'';
	body.bMem=body.bMem||'';
	body.bCnt=body.bCnt||'';
//输入参数检测
    if(body.bID==''||body.bName==''||body.bPub==''||body.bDate==''||body.bAuthor==''||body.bMem==''||body.bCnt==''){
        return HTM.begin+HTM.error_2_2+"提交的参数有误：输入参数不能为空"+HTM.end;
    }
    if(body.bID.length>30)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：书号最多30个字符,如“ISBN 7-5325-2480-9”"+HTM.end;
    if(body.bName.length>30)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：书名最多30个字符，如“人间词话”"+HTM.end;
    if(body.bPub.length>30)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：出版社最多30个字符，如“上海古籍出版社”"+HTM.end;
//日期匹配测试,调用isrightdate()
    switch(isrightdate(body.bDate)){
        case 0:return HTM.begin+HTM.error_2_2+"提交的参数有误：出版日期提交格式为“yyyy-mm-dd”，如“2008-08-09”"+HTM.end;break;
        case 1:return HTM.begin+HTM.error_2_2+"提交的参数有误：月份必须在1-12之间"+HTM.end;break;
        case 2:return HTM.begin+HTM.error_2_2+"提交的参数有误：当前输入的日超过了当月月份的总天数"+HTM.end;break;
        case 3:return HTM.begin+HTM.error_2_2+"提交的参数有误：出版日期超过了当前系统日期，请检查输入是否正确"+HTM.end;break;
    }  
    if(body.bAuthor.length>20)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：作者最多20个字符，如“王国维”"+HTM.end;
    if(body.bMem.length>30)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：内容摘要最多30个字符，如“高等教育出版社”"+HTM.end;
//进行数量整数匹配测试
    var example_1=/^[1-9]\d*$/;
    var Example_1= new RegExp(example_1);
    if(!Example_1.test(body.bCnt)){
        return HTM.begin+HTM.error_2_2+"提交的参数有误：新书数量必须为整数且大于0"+HTM.end;
    }
//检测新书是否已经存在
    let lines=yield db.execSQL("select count(*) as Cnt from book where bID=?",[body.bID]);
    if(lines[0].Cnt>0)
    return HTM.begin+HTM.error_2_1+'该书已经存在'+HTM.end;
//将新书信息导入数据库
    yield db.execSQL("insert into book(bID,bName,bPub,bDate,bAuthor,bMem,bCnt,bTotal) values(?,?,?,?,?,?,?,?)",[body.bID,body.bName,body.bPub,body.bDate,body.bAuthor,body.bMem,body.bCnt,body.bCnt]);
    return HTM.begin+HTM.success+'成功'+HTM.end;
};

exports.addbooknum=function*(req,res){
    let body=req.body;
	body.bID=body.bID || '';
    body.bCnt=body.bCnt || '';
//输入参数检测
    if(body.bID==''||body.bCnt==''){
        return HTM.begin+HTM.error_2_2+"提交的参数有误：输入参数不能为空"+HTM.end;
    }
    if(body.bID.length>30)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：书号最多30个字符,如“ISBN 7-5325-2480-9”"+HTM.end;
//进行数量整数匹配测试
    var example_1=/^[1-9]\d*$/;
    var Example_1= new RegExp(example_1);
    if(!Example_1.test(body.bCnt)){
        return HTM.begin+HTM.error_2_2+"提交的参数有误：新书数量必须为整数且大于0"+HTM.end;
    }
//检测该书是否已经存在
    let lines=yield db.execSQL("select count(*) as Cnt from book where bID=?",[body.bID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_1+'该书不存在'+HTM.end;
//增加所选书籍数量
    var num=0;
    var totalnum=0;
    lines=yield db.execSQL("select bCnt,bTotal from book where bID=?",[body.bID]);
    for(let line of lines){
        num=line.bCnt;
        totalnum=line.bTotal;
    }
    yield db.execSQL("update book set bCnt=?,bTotal=? where bId=?",[parseInt(num)+parseInt(body.bCnt),parseInt(totalnum)+parseInt(body.bCnt),body.bID]);
    return HTM.begin+HTM.success+'成功'+HTM.end;
};

exports.redbooknum=function*(req,res){
    let body=req.body;
	body.bID=body.bID || '';
    body.bCnt=body.bCnt || '';
//输入参数检测
    if(body.bID==''||body.bCnt==''){
        return HTM.begin+HTM.error_2_3+"提交的参数有误：输入参数不能为空"+HTM.end;
    }
    if(body.bID.length>30)
    return HTM.begin+HTM.error_2_3+"提交的参数有误：书号最多30个字符,如“ISBN 7-5325-2480-9”"+HTM.end;
//进行数量整数匹配测试
    var example_1=/^[1-9]\d*$/;
    var Example_1= new RegExp(example_1);
    if(!Example_1.test(body.bCnt)){
        return HTM.begin+HTM.error_2_3+"提交的参数有误：新书数量必须为整数且大于0"+HTM.end;
    }
//检测该书是否已经存在
    let lines=yield db.execSQL("select count(*) as Cnt from book where bID=?",[body.bID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_1+'该书不存在'+HTM.end;

    var num=0;
    var totalnum=0;
    lines=yield db.execSQL("select bCnt,bTotal from book where bID=?",[body.bID]);
    for(let line of lines){
        num=line.bCnt;
        totalnum=line.bTotal;
    }
//检测减少的数量是否大于该书目前在库（未借出）的数量
    if(parseInt(body.bCnt)>totalnum)
    return HTM.begin+HTM.error_2_2+'减少的数量大于该书目前在库数量'+HTM.end;
    else{
        yield db.execSQL("update book set bCnt=?,bTotal=? where bId=?",[parseInt(num)-parseInt(body.bCnt),parseInt(totalnum)-parseInt(body.bCnt),body.bID]);
        return HTM.begin+HTM.success+'成功'+HTM.end;
    }
};

exports.alterbook=function*(req,res){
    let body=req.body;
    body.bID=body.bID||'';
	body.bName=body.bName||'';
	body.bPub=body.bPub||'';
	body.bDate=body.bDate||'';
	body.bAuthor=body.bAuthor||'';
	body.bMem=body.bMem||'';
//输入参数检测
    if(body.bID==''||body.bName==''||body.bPub==''||body.bDate==''||body.bAuthor==''||body.bMem==''){
        return HTM.begin+HTM.error_2_2+"提交的参数有误：输入参数不能为空"+HTM.end;
    }
    if(body.bID.length>30)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：书号最多30个字符,如“ISBN 7-5325-2480-9”"+HTM.end;
    if(body.bName.length>30)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：书名最多30个字符，如“人间词话”"+HTM.end;
    if(body.bPub.length>30)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：出版社最多30个字符，如“上海古籍出版社”"+HTM.end;
//通过日期的正则表达式进行日期匹配测试
switch(isrightdate(body.bDate)){
    case 0:return HTM.begin+HTM.error_2_2+"提交的参数有误：出版日期提交格式为“yyyy-mm-dd”，如“2008-08-09”"+HTM.end;break;
    case 1:return HTM.begin+HTM.error_2_2+"提交的参数有误：月份必须在1-12之间"+HTM.end;break;
    case 2:return HTM.begin+HTM.error_2_2+"提交的参数有误：当前输入的日超过了当月月份的总天数"+HTM.end;break;
    case 3:return HTM.begin+HTM.error_2_2+"提交的参数有误：出版日期超过了当前系统日期，请检查输入是否正确"+HTM.end;break;
}
    if(body.bAuthor.length>20)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：作者最多20个字符，如“王国维”"+HTM.end;
    if(body.bMem.length>30)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：内容摘要最多30个字符，如“高等教育出版社”"+HTM.end;
//检测该书是否已经存在
    let lines=yield db.execSQL("select count(*) as Cnt from book where bID=?",[body.bID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_1+'该书不存在'+HTM.end;
    yield db.execSQL("update book set bName=?,bPub=?,bDate=?,bAuthor=?,bMem=? where bId=?",[body.bName,body.bPub,body.bDate,body.bAuthor,body.bMem,body.bID]);
	return HTM.begin+HTM.success+'成功'+HTM.end;
};

exports.searchbook=function*(req,res){
    let body=req.body;
    body.bID=body.bID||'';
	body.bName=body.bName||'';
	body.bPub=body.bPub||'';
    body.bDate0=body.bDate0||'';
    body.bDate1=body.bDate1||'';
	body.bAuthor=body.bAuthor||'';
    body.bMem=body.bMem||'';
    //这里不能用全局变量，否则每次查询结果会重复显示
    let table="<table border=1 id=\'result\'>";
    var sql="select * from book ";
    if(body.bID)
    sql+=" where bID like '%"+body.bID+"%'";
    if(body.bName){
        if(body.bID=='')
        sql+=" where bName like '%"+body.bName+"%'";
        else
        sql+=" and bName like '%"+body.bName+"%'";
	}
	if(body.bPub){
		if(body.bID==''&&body.bName=='')
		sql+=" where bPub like '%"+body.bPub+"%'";
		else
		sql+=" and bPub like '%"+body.bPub+"%'";
    }
    //日期要同时考虑才行
    if(body.bDate0){
        if(body.bID==''&&body.bName==''&&body.bPub==''){
            if(body.bDate1=='')
            sql+=" where bDate>='"+body.bDate0+"'";
            else
            sql+=" where bDate between '"+body.bDate0+"'" +" and '"+body.bDate1+"'";
        }
        else{
            if(body.bDate1=='')
            sql+=" and bDate>='"+body.bDate0+"'";
            else
            sql+=" and bDate between '"+body.bDate0+"'" +" and '"+body.bDate1+"'";
        }
    }
    else{
        if(body.bID==''&&body.bName==''&&body.bPub==''){
            if(body.bDate1)
            sql+=" where bDate<='"+body.bDate1+"'";
        }
        else{
            if(body.bDate1)
            sql+=" and bDate<='"+body.bDate1+"'";
        }
    }
    if(body.bAuthor){
        if(body.bID==''&&body.bName==''&&body.bPub==''&&body.bDate1==''&&body.bDate0=='')
        sql+=" where bAuthor like '%"+body.bAuthor+"%'";
        else
        sql+=" and bAuthor like '%"+body.bAuthor+"%'";
    }
    if(body.bMem){
		if(body.bID==''&&body.bName==''&&body.bPub==''&&body.bDate1==''&&body.bDate0==''&&body.bAuthor=='')
        sql+=" where bMem like '%"+body.bMem+"%'";
        else
        sql+=" and bMem like '%"+body.bMem+"%'";
    }
    let lines=yield db.execSQL(sql);
    for(let line of lines)
    table+="<tr><td>"+line.bID+"</td><td>"+line.bName+"</td><td>"+line.bTotal+"</td><td>"+line.bCnt+"</td><td>"+line.bPub+"</td><td>"+line.bDate+"</td><td>"+line.bAuthor+"</td><td>"+line.bMem;
    return HTM.begin+table+"</table>"+HTM.end;
};






