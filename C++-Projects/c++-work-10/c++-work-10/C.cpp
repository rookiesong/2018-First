/*
C: 火星A+B
题目描述
读入两个不超过25位的火星正整数A和B，计算A+B。需要注意的是：在火星上，整数不是单一进制的，第n位的进制就是第n个素数。例如：地球上的10进制数2，在火星上记为“1,0”，因为火星个位数是2进制的；地球上的10进制数38，在火星上记为“1,1,1,0”，因为火星个位数是2进制的，十位数是3进制的，百位数是5进制的，千位数是7进制的……
输入描述:
测试输入包含若干测试用例，每个测试用例占一行，包含两个火星正整数A和B，火星整数的相邻两位数用逗号分隔，A和B之间有一个空格间隔。当A或B为0时输入结束，相应的结果不要输出。

输出描述:
对每个测试用例输出1行，即火星表示法的A+B的值。

输入
1,0 2,1
4,2,0 1,2,0
1 10,6,4,2,1
0 0

输出
1,0,1
1,1,1,0
1,0,0,0,0,0
*/

#include <stdio.h>
#include <math.h>
#include <string.h>

int prime(int x)
{
	int flag = 1;
	for (int i = 2; i <= sqrt(x); i++)
	{
		if (x % i == 0)
		{
			flag = 0;
			break;
		}
	}
	return flag;
}
int main_C()
{
	int p[30], top = 0, len1, len2, num1[30], num2[30], ans[30];
	char str1[1000], str2[1000];
	for (int i = 2; top < 25; i++)
	{
		if (prime(i))
		{
			p[top++] = i;
		}
	}
	while (~scanf("%s%s", str1, str2))
	{
		if (strcmp(str1, "0") == 0 || strcmp(str2, "0") == 0)
			break;
		memset(num1, 0, sizeof(num1));
		memset(num2, 0, sizeof(num2));
		memset(ans, 0, sizeof(ans));
		top = 0;
		int k = 1, cnt;
		len1 = strlen(str1);
		len2 = strlen(str2);
		for (int i = len1 - 1; i >= 0; i--)
		{
			if (str1[i] == ',')
			{
				top++;
				k = 1;
				continue;
			}
			num1[top] += (str1[i] - '0') * k;
			k = k * 10;
		}
		cnt = top + 1;
		top = 0;
		k = 1;
		for (int i = len2 - 1; i >= 0; i--)
		{
			if (str2[i] == ',')
			{
				top++;
				k = 1;
				continue;
			}
			num2[top] += (str2[i] - '0') * k;
			k = k * 10;
		}
		if (top + 1 > cnt)
			cnt = top + 1;
		for (int i = 0; i < cnt; i++)
		{
			ans[i] += num1[i] + num2[i];
			while (ans[i] >= p[i] && p[i] != 0)
			{
				ans[i + 1] += ans[i] / p[i];
				ans[i] %= p[i];
			}
			k = i + 1;
		}
		if (ans[k])
			printf("%d,", ans[k]);
		for (int i = cnt - 1; i > 0; i--)
			printf("%d,", ans[i]);
		printf("%d\n", ans[0]);
	}
}