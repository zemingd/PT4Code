package main

import (
	"fmt"
)

func main() {
	var n, k, x, y int
	fmt.Scan(&n)
	fmt.Scan(&k)
	fmt.Scan(&x)
	fmt.Scan(&y)
	// fmt.Printf("x = %d, k = %d, x = %d, y = %d\n", n, k, x, y)

	var sum int
	for i := 1; i <= n; i++ {
		if i <= k {
			sum += x
		} else {
			sum += y
		}
	}
	fmt.Println(sum)
}
