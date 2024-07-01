package main

import (
	"fmt"
)

func main() {
	var a, b, c float64
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	fmt.Println(check(a, b, c))
}

func check(a, b, c float64) string {
	if c-a-b > 0 && 4*a*b < (c-a-b)*(c-a-b) {
		return "Yes"
	} else {
		return "No"
	}
}
