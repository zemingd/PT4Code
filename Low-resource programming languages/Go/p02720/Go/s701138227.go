package main

import "fmt"

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main(){
var k int;
  fmt.Scan(&k);
  var count int;
  for i:=0;;i++{
	if(isLunlun(i)){
		count++
	}
	if(count==k-1){
		fmt.Println(i);
		break;
	}
  }
}

func isLunlun(n int) bool{
	prev:=-1;
	for n>0{
		curr:= n%10;
		if(prev==-1){
			prev=curr
		}else{
			if(Abs(prev - curr) != 1){
				return false
			} 
		}
		prev=curr;
		n=n/10
	}
	return true;
}