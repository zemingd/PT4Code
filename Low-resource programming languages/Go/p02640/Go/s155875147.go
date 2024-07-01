package main

import (
	"fmt"
)

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	ans := true

	if y%2 != 0 {
		ans = false
	}

	if y < 2*x || y > 4*x {
		ans = false
	}
	if ans {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
