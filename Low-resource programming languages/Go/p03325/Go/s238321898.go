package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	sum := 0
	for i := 0; i < n; i++ {
		var v int
		fmt.Scan(&v)
		for v%2 == 0 {
			sum++
			v /= 2
		}
	}
	fmt.Println(sum)
}
