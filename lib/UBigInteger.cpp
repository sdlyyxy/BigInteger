#include "UBigInteger.h"
#include<vector>
#include<iostream>
#include<string>
#include<cstdio>
#include<cstring>
#include<algorithm>
using namespace std;
UBigInteger::UBigInteger(LL num=0){
	*this=num;
}
UBigInteger::UBigInteger(const string &num){
	*this=num;
}
UBigInteger UBigInteger::operator = (LL num){
	s.clear();
	do{
		s.push_back(num%BASE);
		num/=BASE;
	}while(num>0);//what if num<0?
	return *this;
}
UBigInteger operator = (const string &num){
	s.clear();
	int len=(str.length()-1)/WIDTH+1;
	for(int i=0;i<len;i++){
		int end=num.length()-i*WIDTH;
		int start=max(0,end-8);
		int x;
		sscanf(str.substr(start,end-start).c_str(),"%d",&x);
		s.push_back(x);
	}
	return *this;
}
friend UBigInteger operator + (const UBigInteger &b) const{
	UBigInteger c;
	for(int i=0,g=0;;i++){//g is the next place
		if(g==0&&i>=s.size()&&i>=b.s.size())break;
		if(i<s.size())g+=s[i];
		if(i<b.s.size())g+=b.s.[i];
		c.push_back(g%BASE);
		g/=BASE;
	}
	return c;
}
friend UBigInteger operator += (const UBigInteger &b){
	*this=*this+b;
	return *this;
}
friend bool operator < (const UBigInteger &b) const {
	if(s.size()!=b.s.size())return s.size<b.s.size();
	for(int i=0;i<s.size()){
		if(s[i]!=b.s[i])return s[i]<b.s[i];
	}
	return false;
}
friend bool operator > (const UBigInteger &b) const {
	return b<*this;
}
friend bool operator <= (const UBigInteger &b) const {
	return !(b<*this);
}
friend bool operator >= (const UBigInteger &b) const {
	return !(*this<b);
}
friend bool operator != (const UBigInteger &b) const {
	return *this<b||b<*this;
}
friend bool operator == (const UBigInteger &b) const {
	return !(*this<b)&&!(b<*this);
}
friend ostream& operator << (ostream &out,const UBigInteger &x){
	out<<x.s.back();
	for(int i=x.s.size()-2;i>=0;i--){
		char buf[10];
		sprintf(buf,"%08d",x.s[i]);
		for(int j=0;j<strlen(buf);j++)out<<buf[j];
	}
	return out;
}
friend istream& operator >> (istream &in,const UBigInteger &x){
	string s;
	if(in>>s)x=s;
	return in;
}

