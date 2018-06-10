/*
A: 2的幂次方
题目描述
Every positive number can be presented by the exponential form.For example, 137 = 2^7 + 2^3 + 2^0。     Let's present a^b by the form a(b).Then 137 is presented by 2(7)+2(3)+2(0). Since 7 = 2^2 + 2 + 2^0 and 3 = 2 + 2^0 , 137 is finally presented by 2(2(2)+2 +2(0))+2(2+2(0))+2(0).        Given a positive number n,your task is to present n with the exponential form which only contains the digits 0 and 2.
输入描述:
For each case, the input file contains a positive integer n (n<=20000).

输出描述:
For each case, you should output the exponential form of n an a single line.Note that,there should not be any additional white spaces in the line.

输入
1315

输出
2(2(2+2(0))+2)+2(2(2+2(0)))+2(2(2)+2(0))+2+2(0)
*/
#include<iostream>
using namespace std;
int f[16];
void print(int n) {
	bool first = true;
	int num = n;
	for (int i = 15; i >= 0; i--) {
		if (f[i] <= num) {
			if (!first) cout << "+";
			else first = false;
			if (i == 1) cout << "2";
			else if (i == 0) cout << "2(0)";
			else {
				cout << "2(";
				print(i);
				cout << ")";
			}
			num -= f[i];
		}
	}
}

int main_A() {
	f[0] = 1;
	for (int i = 1; i < 16; i++) f[i] = f[i - 1] * 2;
	int n;
	while (cin >> n) {
		print(n);
	}
	return 0;
}