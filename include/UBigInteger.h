#ifndef _U_BIGINTEGER_H_
#define _U_BIGINTEGER_H_

#include<vector>
#include<iostream>
#include<string>
typedef long long LL;

class BigInteger{
public:
	BigInteger(LL num=0);
	BigInteger(const std::string &num);
	BigInteger operator = (LL num);
	BigInteger operator = (const std::string &num);
	BigInteger operator + (const BigInteger &b) const;
	BigInteger operator - (const BigInteger &b) const;
	BigInteger operator * (const BigInteger &b) const;
	BigInteger operator / (const BigInteger &b) const;
	BigInteger operator % (const BigInteger &b) const;
	BigInteger operator += (const BigInteger &b);
	BigInteger operator -= (const BigInteger &b);
	BigInteger operator *= (const BigInteger &b);
	BigInteger operator /= (const BigInteger &b);
	BigInteger operator %= (const BigInteger &b);
	bool operator < (const BigInteger &b) const;
	bool operator > (const BigInteger &b) const;
	bool operator <= (const BigInteger &b) const;
	bool operator >= (const BigInteger &b) const;
	bool operator != (const BigInteger &b) const;
	bool operator == (const BigInteger &b) const;
private:
	static const int BASE=100000000;
	static const int WIDTH=8;
	std::vector<int> s;

friend std::ostream& operator << (std::ostream &os,const BigInteger &x);
friend std::istream& operator >> (std::istream &is,const BigInteger &x);

};

#endif
