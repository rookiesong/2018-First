/*
D: 拦截导弹
题目描述
某国为了防御敌国的导弹袭击，开发出一种导弹拦截系统。但是这种导弹拦截系统有一个缺陷：虽然它的第一发炮弹能够到达任意的高度，但是以后每一发炮弹都不能高于前一发的高度。某天，雷达捕捉到敌国的导弹来袭，并观测到导弹依次飞来的高度，请计算这套系统最多能拦截多少导弹。拦截来袭导弹时，必须按来袭导弹袭击的时间顺序，不允许先拦截后面的导弹，再拦截前面的导弹。
输入描述:
每组输入有两行，
第一行，输入雷达捕捉到的敌国导弹的数量k（k<=25），
第二行，输入k个正整数，表示k枚导弹的高度，按来袭导弹的袭击时间顺序给出，以空格分隔。

输出描述:
每组输出只有一行，包含一个整数，表示最多能拦截多少枚导弹。

输入
8
300 207 155 300 299 170 158 65

输出
6
*/
#include<iostream>
#include<cmath>
using namespace std;
int main_D(){
	int h[21], opt[21], count, i, j, p[21], lis, pos, bul = 0, flis, flag;
	count = 0;
	while (cin >> h[count++]);
	count--;
	flag = count;
	while (flag){
		for (i = 0; i < count; i++){
			opt[i] = 1;
			p[i] = -1;
		}
		lis = 0;
		for (i = count - 1; i >= 0; i--){
			for (j = i + 1; j < count; j++){
				if (h[i] != -1 && h[j] != -1 && h[i] >= h[j] && opt[j] + 1 > opt[i]){
					opt[i] = opt[j] + 1;
					p[i] = j;
				}
			}
			if (opt[i] > lis){
				lis = opt[i];
				pos = i;
			}
		}
		i = pos;
		while (p[i] != -1){
			h[i] = -1;
			i = p[i];
			flag--;
		}
		h[i] = -1;
		flag--;
		if (!bul){
			flis = lis;
		}
		bul++;
	}
	printf("%d\n%d\n", flis, bul);
	return 0;
}