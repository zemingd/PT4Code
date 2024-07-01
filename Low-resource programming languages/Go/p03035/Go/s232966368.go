package main

import (
	"fmt"
)

func main() {
	a := 0
	b := 0
	n := 0

	fmt.Scanf("%d %d", &a, &b)

	if a <= 5 {
		n = 0
	} else if a >= 13 {
		n = b
	} else {
		n = b / 2
	}

	fmt.Printf("%d", n)

}
