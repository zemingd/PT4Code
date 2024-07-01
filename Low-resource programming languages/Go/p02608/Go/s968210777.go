package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	a := make([]int, 10010)
	for x := 1; x <= 100; x++ {
		for y := 1; y <= 100; y++ {
			for z := 1; z <= 100; z++ {
				v := x*x + y*y + z*z + x*y + y*z + z*x
				if v <= 10000 {
					a[v]++
				}
			}
		}
	}
	for i := 0; i < N; i++ {
		fmt.Println(a[i])
	}
}
