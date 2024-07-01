package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	fmt.Println(check(a, b, c))
}

func check(a, b, c int) string {
	if c-a-b > 0 && 4*a*b < (c-a-b)*(c-a-b) {
		return "Yes"
	} else {
		return "No"
	}
}
