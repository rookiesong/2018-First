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

exports.borrowbook=function*(req,res){
    let body=req.body;
    body.bID=body.bID||'';
    body.rID=body.rID||'';
    if(!body.bID||!body.rID){
        return HTM.begin+HTM.error_2_6+"提交的参数有误：输入参数不能为空"+HTM.end;
    }
    if(body.rID.length>8)
    return HTM.begin+HTM.error_2_6+"提交的参数有误：证号是惟一标识每个读者,最多8个字符,如“A-31”"+HTM.end;
    if(body.bID.length>30)
    return HTM.begin+HTM.error_2_6+"提交的参数有误：书号最多30个字符,如“ISBN 7-5325-2480-9”"+HTM.end;
    let lines=yield db.execSQL("select count(*) as Cnt from reader where rID=?",[body.rID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_1+"该证号不存在"+HTM.end;
    lines=yield db.execSQL("select count(*) as Cnt from book where bID=?",[body.bID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_2+"该书号不存在"+HTM.end;
    
    var borrowtime=Date.parse(new Date())/1000;
    lines=yield db.execSQL("select borrowTime from borrow where rID=?",[body.rID]);
    for(let line of lines){
        borrowtime=line.borrowTime;
        if(overtime(borrowtime)){
            return HTM.begin+HTM.error_2_3+"该读者有超期书未还"+HTM.end;
        }
    }

    lines=yield db.execSQL("select count(*) as Cnt from borrow where bID=? and rID=?",[body.bID,body.rID]);
    if(lines[0].Cnt>0)
    return HTM.begin+HTM.error_2_4+"该读者已经借阅该书，且未归还"+HTM.end;
    
    var totalnum;
    lines=yield db.execSQL("select bTotal from book where bID=?",[body.bID]);
    for(let line of lines)
    totalnum=line.bTotal;
    if(totalnum<=0)
    return HTM.begin+HTM.error_2_5+"该书已经全部借出"+HTM.end;
    //借书后，总数减一
    totalnum--;

    yield db.execSQL("insert into borrow(bID,rID,borrowTime) values(?,?,?)",[body.bID,body.rID,borrowtime]);
    yield db.execSQL("update book set bTotal=? where bId=?",[totalnum,body.bID]);
    return HTM.begin+HTM.success+"成功"+HTM.end;
};

exports.borrowlist=function*(req,res){
    var sql="<table border=1 id='result'>";
    let body=req.body;
    body.rID=body.rID||'';
    let lines=yield db.execSQL("select count(*) as Cnt from reader where rID=?",[body.rID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_1+"该证号不存在"+HTM.end;

    //超期文字转换“是”、“否”
    function wordconvert(time){
        var word="否";
        if(overtime(time))
        word="是";
        return word;
    }

    lines=yield db.execSQL("select book.bID,book.bName,borrowTime from book,borrow where book.bID=borrow.bID and rID=?",[body.rID]);
    for(let line of lines)
    sql+="<tr><td>"+line.bID+"</td><td>"+line.bName+"</td><td>"+convert(line.borrowTime)+"</td><td>"+convert(line.borrowTime+604800)+"</td><td>"+wordconvert(line.borrowTime);
    return HTM.begin+sql+"</table>"+HTM.end;
};

exports.returnbook=function*(req,res){

    let body=req.body;
    body.rID=body.rID||'';
    body.bID=body.bID||'';

    let lines=yield db.execSQL("select count(*) as Cnt from reader where rID=?",[body.rID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_1+"该证号不存在"+HTM.end;
    lines=yield db.execSQL("select count(*) as Cnt from book where bID=?",[body.bID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_2+"该书号不存在"+HTM.end;
    lines=yield db.execSQL("select count(*) as Cnt from borrow where rID=? and bID=?",[body.rID,body.bID]);
	if(lines[0].Cnt<=0)
	return HTM.begin+HTM.error_2_3+"该读者并未借阅该书"+HTM.end;
    //还书导致图书馆中该书的数目+1
    var totalnum;
    lines=yield db.execSQL("select bTotal from book where bID=?",[body.bID]);
	for(let line of lines){
		totalnum=line.bTotal;
	}
    totalnum++;
    //首先删除借书表中的信息
    yield db.execSQL("delete from borrow where rID=? and bID=?",[body.rID,body.bID]);
    //之后更新书表
    yield db.execSQL("update book set bTotal=? where bId=?",[totalnum,body.bID]);
    return HTM.begin+HTM.success+'成功'+HTM.end;
};


exports.outtimelist=function*(){
    var sql="<table border=1 id='result'>";

    //超期检测函数,检测时间为1周
    function overtimetest(){
        var nowtime = Date.parse(new Date())/1000;
        var time=nowtime-86400*7;
        return time;
    }

    let lines=yield db.execSQL("select * from borrow,reader where reader.rID=borrow.rID and borrow.borrowTime<?",[overtimetest()]);
    for(let line of lines)
    sql+="<tr><td>"+line.rID+"</td><td>"+line.rName+"</td><td>"+line.rSex+"</td><td>"+line.rDept+"</td><td>"+line.rGrade;
    return HTM.begin+sql+"</table>"+HTM.end;
}
