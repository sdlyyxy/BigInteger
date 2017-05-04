#ifndef BIGINTEGER_H
#define BIGINTEGER_H

#include<vector>
#include<iostream>
#include<string>
#include<cstdio>
#include<cstring>
using namespace std;
typedef long long LL;
struct BigInteger{
	static const int BASE=100000000;
	static const int WIDTH=8;
	vector<int> s;
	
	BigInteger(LL num=0){*this=num;}
	BigInteger operator = (LL num){
		s.clear();
		do{
			s.push_back(num%BASE);
			num/=BASE;
		}while(num>0);
		return *this;
	}
	/*
	BigInteger operator = (const string & str){
		s.clear();
		int x,len=(str.length()-1)/WIDTH+1;
		for(int i=0;i<len;i++)
		*/
friend ostream& operator << (ostream &out,const BigInteger &x){
	out<<x.s.back();
	for(int i=x.s.size()-2;i>=0;i--){
		char buf[20];
		sprintf(buf,"%08d",x.s[i]);
		for(int j=0;j<strlen(buf);j++)out<<buf[j];
	}
	return out;
}
};
#endif
