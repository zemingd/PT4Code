package main

import(
	"fmt"
)

func main(){
	var n,l int
	fmt.Scanln(&n,&l)
	r:=l+n-1
	sum:=(l+r)*n/2
	ans:=sum
	if l>=0{
		ans=sum-l
	} else if r<=0{
		ans=sum-r
	}
	fmt.Println(ans)
}