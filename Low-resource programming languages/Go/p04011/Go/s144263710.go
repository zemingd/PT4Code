package main

import (
	"fmt"
)

func main() {
	var a, b, c, d, total int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)

	for i := 0; i < a; i++ {
		if i > b {
			total += a * c
		} else {
			total += (i - a) * d
		}
	}

	fmt.Println(total)
}
