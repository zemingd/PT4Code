package main

import (
	"fmt"
)

func main(){
	var a, b int
	fmt.Scan(&a, &b)
	
	l := []int{}
	l = append(l, a+b)
	l = append(l, a-b)
	l = append(l, a*b)
	var n, ans int
	for i := range l {
		n = l[i]
		if ans < n {
			ans = n
		}
	}
	fmt.Print(ans)	
}