package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)

	c := (a - 1)

	for i := 1; i <= 20; i++ {
		r := c * i
		if (r + 1) >= b {
			fmt.Println(i)
			break
		}
	}
}
