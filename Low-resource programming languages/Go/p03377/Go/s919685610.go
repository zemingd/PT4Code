package main

import (
	"fmt"
)

func main() {
	var a, b, x int
	fmt.Scan(&a, &b, &x)

	if a+b < x || a > x {
		fmt.Println("NO")
	} else {
		fmt.Println("YES")
	}
}
