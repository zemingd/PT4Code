package main

import (
	"fmt"
)

func main() {
	var n, T int
	fmt.Scan(&n,&T)

	c := make([]int,n)
	t := make([]int,n)
	for i:=0;i < n; i++ {
		fmt.Scan(&c[i],&t[i])
	}

	min := 1001
	for i:=0;i < n; i++{
		if t[i] > T {
			continue
		}
		
		if c[i] < min {
			min = c[i]
		}
	}

	if min == 1001 {
		println("TLE")
	}else{
		println(min)
	}
}


