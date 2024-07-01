#include <iostream>

using namespace std;

int main(){
  int r;
  const double PI = 3.14159265;
  double area, circumference;
  cin >> r;

  area = 2*PI*r;
  circumference = r*r*PI;

  printf("%0.6f %0.6f\n", area, circumference);

}