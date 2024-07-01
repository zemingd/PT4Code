package main

import (
	"fmt"
)

func main() {
	var a, b, c int64
	fmt.Scan(&a, &b, &c)

	d := c - a - b
	if d < 0 {
		fmt.Println("No")
		return
	}
	if d*d > 4*a*b {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
