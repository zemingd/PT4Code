package main

import (
	"fmt"
)

func main() {
	var x, y int
	fmt.Scan(&x, &y)
	a := x % 2
	aa := a % 4
	if aa == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
