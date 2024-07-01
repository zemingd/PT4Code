package main

import (
	"fmt"
)

func main() {
	var a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)

	count := 0
	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			sum := i * 500 + j * 100
			if sum == x {
				count++
				continue
			}

			if sum > x {
				break
			}

			diff := x - sum
			if (diff / 50) <= c {
				count++
				continue
			}
		}
	}

	fmt.Println(count)
}
