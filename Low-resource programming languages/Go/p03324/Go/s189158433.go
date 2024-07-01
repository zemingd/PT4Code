package main

import (
	"fmt"
)

func main() {
	var d, n int
	fmt.Scan(&d, &n)

	if d == 0 {
		if n == 100 {
			n++
		}
		fmt.Println(n)
	} else if d == 1 {
		if n == 100 {
			n++
		}
		fmt.Println(100 * n)
	} else if d == 2 {
		if n == 100 {
			n++
		}
		fmt.Println(10000 * n)
	}
}
