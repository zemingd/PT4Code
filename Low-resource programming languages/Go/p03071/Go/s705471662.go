package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	result := 0
	if a > b {
		a--
		if a > b {
			result = 2*a + 1
		} else {
			result = a + b
		}
	} else if a < b {
		b--
		if a > b {
			result = b + a
		} else {
			result = 2*b + 1
		}
	} else {
		result = 2 * a
	}
	fmt.Println(result)

}
