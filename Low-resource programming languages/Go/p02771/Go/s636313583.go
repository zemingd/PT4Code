package main

import (
	"fmt"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	res := "Yes"
	if a == b && b == c {
		res = "No"
	} else if a != b && b != c && c != a {
		res = "No"
	}

	fmt.Println(res)
}
