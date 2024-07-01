#include<iostream>
using namespace std;
#define rep(i,a) for(int i = 0 ; i < a ;  i++)
int main(void){
	int n;
	cin>>n;
	rep(k,n){
		double x[4];
		double y[4];
		rep(i,4)cin>>x[i]>>y[i];
    
		if(((y[1]-y[0])/(x[1]-x[0])) == ((y[3]-y[2])/(x[3]-x[2])))cout<<"YES";
		else cout<<"NO";
		cout<<endl;
	}
}