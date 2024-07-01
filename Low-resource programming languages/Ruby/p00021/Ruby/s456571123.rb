#include <iostream>
using namespace std;
int main()
{
    int n;cin>>n;
    for(int i=0;i<n;++i){
        double abdx,abdy,cddx,cddy;
        double x[4];
        double y[4];
        for(int j=0;j<4;++j){
            cin>>x[j]>>y[j];
        }
        x[0]>x[1]?abdx=x[0]-x[1]:abdx=x[1]-x[0];
        x[2]>x[3]?cddx=x[2]-x[3]:cddx=x[2]-x[3];
        y[0]>y[1]?abdy=y[0]-y[1]:abdy=y[1]-y[0];
        y[2]>y[3]?cddy=y[2]-y[3]:cddy=y[2]-y[3];
        if((abdy/abdx)==(cddy/cddx))cout<<"yes"<<endl;
        else cout<<"NO"<<endl;
    }
}