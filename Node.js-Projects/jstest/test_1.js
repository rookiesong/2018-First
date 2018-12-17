
function university(Name,city,newDate,URL) 
{ 
    this.Name=Name; 
    this.city=city; 
    this.newDate=new Date(newDate); 
    this.URL=URL;
}

var size=5;
function arraytest(size)
{
    this.length=size;
    var x=0;
    for(;x<size;x++)
    this[x]=x;
    return this;
}

var newDate=new Date();
var newuniversity=new university("university","Sichuan",newDate,"www.scu.edu.cn" );

myarraytest=new arraytest(5);
for(var i in myarraytest)
console.log(myarraytest[i]);