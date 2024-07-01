package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	add := a + b
	sub := a - b
	multiple := a * b

	ans := add
	if ans < sub {
		ans = sub
	}
	if ans < multiple {
		ans = multiple
	}
	fmt.Println(ans)
}
