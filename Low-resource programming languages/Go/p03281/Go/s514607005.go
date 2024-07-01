package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	r := 0
	for i := 1; i <= n; i += 2 {
		y := 1
		for j := 3; j <= n; j += 2 {
			if i%j == 0 {
				y++
			}
		}
		if y == 8 {
			r++
		}
	}
	fmt.Println(r)
}