package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	sum := 0
	for i := 9; i <= n; i += 2 {
		d := 0
		for j := 1; j <= i; j++ {
			if i%j == 0 {
				d++
			}
		}
		if d == 8 {
			sum++
		}
	}
	fmt.Println(sum)
}
