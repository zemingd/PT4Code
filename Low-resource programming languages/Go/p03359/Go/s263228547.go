package main

import (
	"fmt"
)

func main() {
	var a, b, ans int
	fmt.Scan(&a, &b)

	if a > b {
		ans = a - 1
	} else {
		ans = a
	}

	fmt.Println(ans)
}
