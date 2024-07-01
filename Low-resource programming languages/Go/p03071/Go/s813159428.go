package main

import (
	"fmt"
)

func main() {
	var a, b, ans int
	fmt.Scanln(&a, &b)
	if a > b {
		a, b = b, a
	}
	if a == b {
		ans = 2 * a
	} else {
		ans = 2*b - 1
	}
	fmt.Println(ans)
}
