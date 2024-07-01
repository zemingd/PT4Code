package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	afC := c - (a - b)
	if afC < 0 {
		fmt.Println(0)
	} else {
		fmt.Println(afC)
	}

}
