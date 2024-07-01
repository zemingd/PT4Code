package main

import(
	"fmt"
)

func isSecondSmall(a,b,c int)bool{
	if a>b{
		return b>c
	} else {
		return c>b
	}
}

func main(){
	var n int
	fmt.Scanln(&n)
	p:=make([]int,n)
	for i:=0;i<n;i++{
		fmt.Scan(&p[i])
	}
	ans:=0
	for i:=1;i<n-1;i++{
		if isSecondSmall(p[i-1],p[i],p[i+1]){
			ans++
		}
	}
	fmt.Println(ans)
}