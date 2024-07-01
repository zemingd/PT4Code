package main

import (
	"fmt"
)

func main() {
	var count, a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)

	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				if 500*i + 100*j + 50*k == x {
					count++
					break;
				} 
			}
		}
	}

	fmt.Println(count)
}