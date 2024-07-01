package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	fb := make([]int,n)
	
	for i := 0; i < n; i++ {
		if !(i % 3 == 0 || i % 5 == 0) {
			fb[i] = i
		}
	}
	
	sum := 0
	for i, _ := range fb {
			sum += fb[i]
	}
	fmt.Println(sum)
}