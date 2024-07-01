package main

import (
	"fmt"
)

func main() {
	var a, b, c, x int
	fmt.Scanf("%d", &a) // 500
	fmt.Scanf("%d", &b) // 100
	fmt.Scanf("%d", &c) // 50
	fmt.Scanf("%d", &x) // total

	count := 0
	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				sum := 500*i + 100*j + 50*k
				if sum == x {
					count++
				}
			}
		}
	}

	fmt.Println(count)
}
