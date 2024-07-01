package main

import (
	"fmt"
)

// go run ./main.go < in

func main() {
	var a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)

	count, sumA, sumB, sumC := 0, 0, 0, 0
	// sum := 0
	for i := 0; i <= a; i++ {
		sumA = 500 * i
		for j := 0; j <= b; j++ {
			sumB = 100 * j
			for k := 0; k <= c; k++ {
				sumC = 50 * k
				if sumA+sumB+sumC == x {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}