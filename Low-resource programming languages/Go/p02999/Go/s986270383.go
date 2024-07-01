package main

import (
	"fmt"
)

func main() {
	var x, a int

	fmt.Scanf("%d %d", &a, &x)
	if x > a {
		fmt.Printf("%d", 0)
	} else {
		fmt.Printf("%d", 10)
	}

}
