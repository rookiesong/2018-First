'use strict';
const HTM={
	begin:'<html><head><META HTTP-EQUIV="Content-Type" Content="text-html; charset=utf-8"></head><body>',
    end:'</body></html>',
    success:"<div id='result' style='display:none'>0</div>",
    error_2_1:"<div id='result' style='display:none'>1</div>",
    error_2_2:"<div id='result' style='display:none'>2</div>",
    error_2_3:"<div id='result' style='display:none'>3</div>"
};
const db=require("../coSqlite3");

exports.addreader=function*(req,res){
    let body=req.body;
	body.rID=body.rID||'';
	body.rName=body.rName||'';
	body.rSex=body.rSex||'';
	body.rDept=body.rDept||'';
    body.rGrade=body.rGrade||'';
    //输入参数检测
    if(body.rID==''||body.rName==''||body.rSex==''||body.rDept==''||body.rGrade==''){
        return HTM.begin+HTM.error_2_2+"提交的参数有误：输入参数不能为空"+HTM.end;
    }
    if(body.rID.length>8)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：证号是惟一标识每个读者,最多8个字符,如“A-31”"+HTM.end;
	if(body.rName.length>10)
	return HTM.begin+HTM.error_2_2+"提交的参数有误：姓名最多10个字，如“张三”"+HTM.end;
    if(body.rSex!="男"&&body.rSex!="女")
    return HTM.begin+HTM.error_2_2+"提交的参数有误：性别应该填写“男”或者“女”"+HTM.end;
    if(body.rDept.length>10)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：系名最多10个字，如“计科系”"+HTM.end;
    //进行年级整数匹配测试
    var example_1=/^[1-9]\d*$/;
    var Example_1= new RegExp(example_1);
    if(!Example_1.test(body.rGrade)){
        return HTM.begin+HTM.error_2_2+"提交的参数有误：年级应该是正整数"+HTM.end;
    }
    //检测证号是否已经存在
    let lines=yield db.execSQL("select count(*) as Cnt from reader where rID=?",[body.rID]);
    if(lines[0].Cnt>0)
    return HTM.begin+HTM.error_2_1+"该证号已经存在"+HTM.end;
    //将新证号信息导入数据库
    yield db.execSQL("insert into reader(rID,rName,rSex,rDept,rGrade) values(?,?,?,?,?)",[body.rID,body.rName,body.rSex,body.rDept,body.rGrade]);
    return HTM.begin+HTM.success+"成功"+HTM.end;
}

exports.delreader=function*(req,res){
    let body=req.body;
    body.rID=body.rID||'';
    let lines=yield db.execSQL("select count(*) as Cnt from borrow where rID=?",[body.rID]);
    if(lines[0].Cnt>0)
    return HTM.begin+HTM.error_2_2+"该读者尚有书籍未归还"+HTM.end;

    lines=yield db.execSQL("select count(*) as Cnt from reader where rID=?",[body.rID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_1+"该证号不存在"+HTM.end;
    
    yield db.execSQL("delete from reader where rID=?",[body.rID]);
	return HTM.begin+HTM.success+"成功"+HTM.end;
}

exports.alterreader=function*(req,res){
    let body=req.body;
	body.rID=body.rID||'';
	body.rName=body.rName||'';
	body.rSex=body.rSex||'';
	body.rDept=body.rDept||'';
    body.rGrade=body.rGrade||'';
    //输入参数检测
    if(body.rID==''||body.rName==''||body.rSex==''||body.rDept==''||body.rGrade==''){
        return HTM.begin+HTM.error_2_2+"提交的参数有误：输入参数不能为空"+HTM.end;
    }
    if(body.rID.length>8)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：证号是惟一标识每个读者,最多8个字符,如“A-31”"+HTM.end;
	if(body.rName.length>10)
	return HTM.begin+HTM.error_2_2+"提交的参数有误：姓名最多10个字，如“张三”"+HTM.end;
    if(body.rSex!="男"&&body.rSex!="女")
    return HTM.begin+HTM.error_2_2+"提交的参数有误：性别应该填写“男”或者“女”"+HTM.end;
    if(body.rDept.length>10)
    return HTM.begin+HTM.error_2_2+"提交的参数有误：系名最多10个字，如“计科系”"+HTM.end;
    //进行年级整数匹配测试
    var example_1=/^[1-9]\d*$/;
    var Example_1= new RegExp(example_1);
    if(!Example_1.test(body.rGrade)){
        return HTM.begin+HTM.error_2_2+"提交的参数有误：年级应该是正整数"+HTM.end;
    }
    
    let lines=yield db.execSQL("select count(*) as Cnt from reader where rID=?",[body.rID]);
    if(lines[0].Cnt<=0)
    return HTM.begin+HTM.error_2_1+"该证号不存在"+HTM.end;
    yield db.execSQL("update reader set rName=?,rSex=?,rDept=?,rGrade=? where rID=?",[body.rName,body.rSex,body.rDept,body.rGrade,body.rID]);
	return HTM.begin+HTM.success+"成功"+HTM.end;
}

exports.searchreader=function*(req,res){
    let body=req.body;
	body.rID=body.rID||'';
	body.rName=body.rName||'';
	body.rSex=body.rSex||'';
	body.rDept=body.rDept||'';
    body.rGrade0=body.rGrade0||'';
    body.rGrade1=body.rGrade1||'';
    //这里不能用全局变量，否则每次查询结果会重复显示
    let table="<table border=1 id='result'>";
    var sql="select * from reader ";
    if(body.rID)
    sql+=" where rID like '%"+body.rID+"%'";
    if(body.rName){
        if(body.rID=='')
        sql+=" where rName like '%"+body.rName+"%'";
        else
        sql+=" and rName like '%"+body.rName+"%'";
	}
	if(body.rSex){
		if(body.rID==''&&body.rName=='')
		sql+=" where rSex like '%"+body.rSex+"%'";
		else
		sql+=" and rSex like '%"+body.rSex+"%'";
    }
    if(body.rDept){
        if(body.rID==''&&body.rName==''&&body.rSex=='')
        sql+=" where rDept like '%"+body.rDept+"%'";
        else
        sql+=" and rDept like '%"+body.rDept+"%'";
    }
    //日期要同时考虑才行
    if(body.rGrade0){
        if(body.rID==''&&body.rName==''&&body.rSex==''&&body.rDept==''){
            if(body.rGrade1=='')
            sql+=" where rGrade>='"+body.rGrade0+"'";
            else
            sql+=" where rGrade between '"+body.rGrade0+"'" +" and '"+body.rGrade1+"'";
        }
        else{
            if(body.rGrade1=='')
            sql+=" and rGrade>='"+body.rGrade0+"'";
            else
            sql+=" and rGrade between '"+body.rGrade0+"'" +" and '"+body.rGrade1+"'";
        }
    }
    else{
        if(body.bID==''&&body.bName==''&&body.rSex==''&&body.rDept==''){
            if(body.rGrade1)
            sql+=" where rGrade<='"+body.rGrade1+"'";
        }
        else{
            if(body.rGrade1)
            sql+=" and rGrade<='"+body.rGrade1+"'";
        }
    }

    let lines=yield db.execSQL(sql);
    for(let line of lines)
    table+="<tr><td>"+line.rID+"</td><td>"+line.rName+"</td><td>"+line.rSex+"</td><td>"+line.rDept+"</td><td>"+line.rGrade;
    return HTM.begin+table+"</table>"+HTM.end;
}



