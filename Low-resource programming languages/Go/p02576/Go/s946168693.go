package main

import (
	"fmt"
)

func main() {
	var n int
	var x int
	var t int

	fmt.Scan(&n)
	fmt.Scan(&x)
	fmt.Scan(&t)

	var ans int

	if n % x == 0 {
		ans = n / x * t
	} else {
		ans = (n / x + 1) * t
	}

	fmt.Printlnec(ans)
}
