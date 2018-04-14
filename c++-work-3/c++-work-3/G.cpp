/*描述

按照国家规定，个人所得税起征点为3500元，当工资高于3500时，需缴纳个人所得税。缴纳标准如下：
级数    含税级距                         税率
1       不超过1, 500元的                 3 %
2       超过1, 500元至4, 500元的部分     10 %
3       超过4, 500元至9, 000元的部分     20 %
4       超过9, 000元至35, 000元的部分    25 %
5       超过35, 000元至55, 000元的部分   30 %
6       超过55, 000元至80, 000元的部分   35 %
7       超过80, 000元的部分              45 %
如当一个人工资为6000时，首先计算交税部分为6000 - 3500 = 2500，则纳税金额为：1500 * 3 % +1000 * 10 % = 145

输入

第一行输入一个正整数值n代表个人税前工资。

输出

计算个人应交所得税并输出，保留小数点后两位。*/
#include<iostream>
int mainG()
{
	int n;
	float sum;
	scanf("%d",&n);
	if(n-3500<=0)
	sum=0;
	else if(n-3500<=1500)
	sum=(n-3500)*0.03;
	else if(n-3500<=4500)
	sum=1500*0.03+(n-3500-1500)*0.1;
	else if(n-3500<=9000)
	sum=1500*0.03+3000*0.1+(n-3500-4500)*0.2;
	else if(n-3500<=35000)
	sum=1500*0.03+3000*0.1+4500*0.2+(n-3500-9000)*0.25;
	else if(n-3500<=55000)
	sum=1500*0.03+3000*0.1+4500*0.2+26000*0.25+(n-3500-35000)*0.3;
    else if(n-3500<=80000) 
    sum=1500*0.03+3000*0.1+4500*0.2+26000*0.25+20000*0.3+(n-3500-55000)*0.35;
    else 
    sum=1500*0.03+3000*0.1+4500*0.2+26000*0.25+20000*0.3+25000*0.35+(n-3500-80000)*0.45;
    printf("%.2f",sum);
	return 0;
}