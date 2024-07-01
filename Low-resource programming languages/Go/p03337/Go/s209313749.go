package main

import (
	"fmt"
)

func main() {
	var a int
	var b int
	fmt.Scan(&a, &b)
	plus := a + b
	diff := a - b
	math := a * b

	if plus > diff {
		if plus > math {
			fmt.Println(plus)
		} else {
			fmt.Println(math)
		}
	} else {
		if diff > math {
			fmt.Println(diff)
		} else {
			fmt.Println(math)
		}
	}
}
