package main

import (
	"fmt"
	"sort"
)

func main(){
	var N int
	fmt.Scan(&N)
	var X int
	XN := make([]int, N)
	for i:=0; i < N; i++ {
		fmt.Scan(&X)
		XN[i] = X
	}

	so := make([]int, N)
	copy(so,XN)
	sort.Ints(so)
	c:=so[(N/2)]

	for i := 0; i < N; i++ {
		if XN[i] < c {
			fmt.Println(so[(N/2)])
		}else{
			fmt.Println(so[(N/2)-1])
		}
	}
}