package main

import (
	"fmt"
)

func main() {
	var x, y int
	fmt.Scan(&x, &y)
	b := y - 2*x
	if b >= 0 && b%2 == 0 && x >= b/2 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
