package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	for i := 1; i < 5; i++ {
		max := 1
		for j := 0; j < i; j++ {
			max *= K
		}
		max -= 1
		// fmt.Printf("max %d\n", max)
		if N <= max {
			fmt.Printf("%d\n", i)
			break
		}
	}
}
