package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	result := "No"
	if a == b {
		if a != c {
			result = "Yes"
		}
	}
	if a == c {
		if a != b {
			result = "Yes"
		}
	}
	if b == c {
		if a != b {
			result = "Yes"
		}
	}
	fmt.Println(result)

}
