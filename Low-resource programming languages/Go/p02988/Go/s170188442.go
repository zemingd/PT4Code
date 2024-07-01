package main

import (
	"fmt"
)

func main(){
	var n int
	var p []int
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		temp:=0
		fmt.Scan(&temp)
		p = append(p, temp)
	}

	res := 0
	for i := 1; i < len(p)-1; i++ {
		if p[i] > p[i-1] && p[i] < p[i+1] || p[i] < p[i-1] && p[i] > p[i+1] {
			res++
		}
	}

	fmt.Println(res)
}