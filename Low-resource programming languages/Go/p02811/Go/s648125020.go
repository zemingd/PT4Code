package main

import (
	"fmt"
)

func main() {
	var k, x int
	fmt.Scanf("%d %d", &k, &x)

	if 500 * k >= x {
		fmt.Print("Yes\n")
	} else {
		fmt.Print("NG\n")
	}
}
