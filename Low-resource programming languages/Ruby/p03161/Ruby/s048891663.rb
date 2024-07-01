#include<bits/stdc++.h>

std::vector<int> memo(100000);
std::vector<int> h(100000);
int n,k;
int cal(int i){
	if(memo.at(i)!=-1){
		return memo.at(i);
	}
	else{
		int min=999999;
		for(int j=i-1;j>=i-k;j--){
			if(j<0){
				break;
			}
			int value=cal(j)+abs(h.at(i)-h.at(j));
			if(min>value){
				min=value;
			}
		}
		memo.at(i)=min;
		return memo.at(i);
	}
}
int main(){
	std::cin>>n;
	std::cin>>k;
	for(int i=0;i<n;i++){
		std::cin>>h.at(i);
		memo.at(i)=-1;
	}
	memo.at(0)=0;
	memo.at(1)=abs(h.at(0)-h.at(1));
	printf("%d\n",cal(n-1));
	return 0;
}