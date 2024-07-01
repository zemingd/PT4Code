package main

import (
	"fmt"
)

func main() {
	var a, b int

	fmt.Scan(&a, &b)

	ans := 0
	n := 2

	for i := 0; i < n; i++ {
		if a > b {
			ans += a
			a--
		} else {
			ans += b
			b--
		}
	}

	fmt.Print(ans)

}
