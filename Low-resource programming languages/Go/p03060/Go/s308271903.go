package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	values := make([]int,n)
	costs := make([]int,n)
	
	for i := 0; i < n; i++ {
		fmt.Scan(&values[i])
	}
	
	gain := 0
	for i := 0; i < n; i++ {
		fmt.Scan(&costs[i])
		diff := values[i] - costs[i]
		if diff > 0 {
			gain += diff
		}
	}
	fmt.Println(gain)
}