package main

import (
	"fmt"
)

func main() {
	var x, a int
	fmt.Scanf("%d %d", &x, &a)

	if x < a {
		fmt.Print(0)
		return
	}

	if x >= a {
		fmt.Print(10)
	}

}
