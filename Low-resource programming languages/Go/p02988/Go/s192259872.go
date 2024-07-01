package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ps := make([]int,n)
	for i:= 0; i < n; i++ {
		var p int
		fmt.Scan(&p)
		ps[i] = p
	}

	count := 0
	for i := 1; i < n - 1; i++ {
		if ps[i-1] < ps[i] && ps[i] < ps[i+1] {
			count++
		} else if ps[i+1] < ps[i] && ps[i] < ps[i-1] {
			count++
		}
	}
	fmt.Println(count)
}