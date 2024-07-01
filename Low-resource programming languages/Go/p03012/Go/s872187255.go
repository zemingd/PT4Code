package main

import(
	"fmt"
)
func abs(a int)int{
	if a>0{return a}
	return -a
}

func main(){
	var n int
	fmt.Scanln(&n)
	w:=make([]int,n)
	sum:=0
	for i:=0;i<n;i++{
		fmt.Scan(&w[i])
		sum+=w[i]
	}
	ans:=10000000000
	psum:=0
	for i:=0;i<n-1;i++{
		psum+=w[i]
		qsum:=sum-psum
		diff:=abs(psum-qsum)
		if diff<ans{
			ans=diff
		}
	}
	fmt.Println(ans)
}