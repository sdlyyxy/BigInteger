#ifndef _BIGINTEGER_H_
#define _BIGINTEGER_H_

#include<vector>
#include<iostream>
typedef long long LL;

struct BigInteger{
	static const int BASE=100000000;
	static const int WIDTH=8;
	std::vector<int> s;

	BigInteger(LL num);
	//BigInteger();
	BigInteger operator = (LL num);
};

std::ostream& operator << (std::ostream &os,const BigInteger &x);

#endif
