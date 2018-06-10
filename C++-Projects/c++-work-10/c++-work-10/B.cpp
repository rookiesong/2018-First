/*
B: 最小面积子矩阵
题目描述
一个N*M的矩阵，找出这个矩阵中所有元素的和不小于K的面积最小的子矩阵（矩阵中元素个数为矩阵面积）
输入描述:
每个案例第一行三个正整数N,M<=100，表示矩阵大小，和一个整数K
接下来N行，每行M个数，表示矩阵每个元素的值

输出描述:
输出最小面积的值。如果出现任意矩阵的和都小于K，直接输出-1。

输入
4 4 10
1 2 3 4
5 6 7 8
9 10 11 12
13 14 15 16

输出
1
*/
#include <cstring>
#include <cstdlib>
#include <cstdio>
#include <iostream>
#include <cstring>
#define min(a,b) ((a)>(b)?(b):(a))
#define max(a,b) ((a)<(b)?(b):(a))
int a[101][101];
int main_B()
{
	int n, m, k, i, j, p, q,size1, size2, sum, res; bool flag;
	while (scanf("%d %d %d", &n, &m, &k) != EOF)
	{
		memset(a, 0, sizeof(a)); flag = false; res = 100000;
		for (i = 1; i <= n; i++)
			for (j = 1; j <= m; j++)
				scanf("%d", &a[i][j]);
		for (size1 = 1; size1 <= n; size1++)
		{
			for (size2 = 1; size2 <= m; size2++)
			{
				for (i = 1; i <= n - size1 + 1; i++)
				{
					for (j = 1; j <= m - size2 + 1; j++)
					{
						sum = 0;
						for (p = 0; p<size1; p++)
							for (q = 0; q<size2; q++)
								sum += a[i + p][j + q];
						if (sum >= k) { flag = true; if (res>size1*size2) res = size1*size2; }			
					}
				
				}
			}
		}
		if (flag) printf("%d\n", res);
		else printf("-1\n");

	}

	return 0;
}