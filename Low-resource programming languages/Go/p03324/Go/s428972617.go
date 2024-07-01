package main

import (
	"fmt"
)

func main() {
	var d, n int
	fmt.Scan(&d, &n)

	if d == 0 {
		fmt.Println(n)
	} else {
		base := 1
		for i := 0; i < d; i++ {
			base *= 100
		}
		fmt.Println(base * n)
	}
}
