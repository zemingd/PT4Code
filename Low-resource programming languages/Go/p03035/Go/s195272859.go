package main

import (
	"fmt"
)

func main() {
	var a float64
	var b float64

	fmt.Scan(&a)
	fmt.Scan(&b)

	n := 0
	if a <= 5 {
		n = 0
	} else if a >= 6 && a <= 12 {
		n = int(b / 2)
	} else {
		n = int(b)
	}

	fmt.Println(n)
}
