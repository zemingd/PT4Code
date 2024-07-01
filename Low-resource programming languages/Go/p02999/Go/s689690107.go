package main

import (
	"fmt"
)

func main() {
	var x, a int
	fmt.Scanf("%d %d", &x, &a)

	if x < a {
		fmt.Println(0)
	} else {
		fmt.Println(10)
	}
}