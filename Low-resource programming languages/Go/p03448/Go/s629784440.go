package main

import (
	"fmt"
)

func main() {
	var a int
	var b int
	var c int
	var x int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&x)

	res := 0
	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				if 500 * i + 100 * j + 50 * k == x {
					res++;
				}
			}
		}
	}

	fmt.Println(res)
}
