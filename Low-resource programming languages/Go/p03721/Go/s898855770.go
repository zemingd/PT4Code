package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	x := [100000]int{}
	for i := 0; i < n; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		x[a-1] += b
	}
	c := 0
	for i := 0; i < 100000; i++ {
		c += x[i]
		if c >= k {
			fmt.Println(i + 1)
            break
		}
	}
}
