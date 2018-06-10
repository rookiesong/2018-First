/*
E: 放苹果
题目描述
把 M 个同样的苹果放在 N 个同样的盘子里，允许有的盘子空着不放，问共有多少种不同的分法？
注意：5、1、1 和 1、5、1 是同一种分法，即顺序无关。
输入描述:
输入包含多组数据。

每组数据包含两个正整数 m和n（1≤m, n≤20）。

输出描述:
对应每组数据，输出一个整数k，表示有k种不同的分法。

输入：
7 3

输出：
8
*/

#include <iostream> 
using namespace std;


int putapples(int m, int n)  
{
	if (m == 0 || n == 1)  
		return 1;      
	if (n>m)
		return putapples(m, m);
	else
		return putapples(m, n - 1) + putapples(m - n, n);
}

int main_E()
{
	int m, n;
	while (cin >> m >> n)
	{
		if (n <= 0 || m < 0)
		{
			cout << -1 << endl;
		}
		else
		{
			cout << putapples(m, n) << endl;
		}

	}
	return 0;
}