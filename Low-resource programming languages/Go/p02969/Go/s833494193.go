package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var d int
	fmt.Scan(&d)

	ans := n / ((2 * d) + 1)
	if ans*((2*d)+1) != n {
		fmt.Print(ans + 1)
		return
	}
	fmt.Print(ans)
}
