package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	fb := make([]int,n+1)
	
	for i := 0; i < n+1; i++ {
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