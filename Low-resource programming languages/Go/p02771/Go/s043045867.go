package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	result := "Yes"
	if a == b && b == c && a == c ||
		a != b && b != c && a != c {
		result = "No"
	}
	fmt.Println(result)
}
