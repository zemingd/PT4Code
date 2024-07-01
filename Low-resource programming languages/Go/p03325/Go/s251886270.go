package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	c := 0
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		for (a % 2 == 0)&&(a != 0) {
			a = a / 2
			c++
		}
	}

	fmt.Print(c)
}