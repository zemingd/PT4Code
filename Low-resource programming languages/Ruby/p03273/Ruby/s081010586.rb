#include<bits/stdc++.h>
#define rep(i,n) for(int i=0;i<(int)n;i++)
#define Rep(i,s,f) for(int i=(int)s;i<(int)f;i++)
using ll=long long;
using namespace std;


int main()
{
	int H,W;
	cin>>H>>W;
	vector<string> a(H);
	rep(i,H) cin>>a[i];

	rep(i,H)
	{
		bool flag=true;
		rep(j,W)
		{
			if(a[i][j]=='#') flag=false;
		}
		if(flag)
		{
			rep(j,W)
			{
				a[i][j]='\0';
			}
		}
	}

	rep(j,W)
	{
		bool flag=true;
		rep(i,H)
		{
			if(a[i][j]=='#') flag=false;
		}
		if(flag)
		{
			rep(i,H)
			{
				a[i][j]='\0';
			}
		}
	}
	rep(i,H)
	{
		bool flag=true;
		rep(j,W)
		{
			if(a[i][j]!='\0') flag=false;
			cout<<a[i][j];
		}
		if(!flag) cout<<endl;
	}
	return 0;
}
