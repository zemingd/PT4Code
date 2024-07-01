package main

import (
	"fmt"
)

func main() {
	var a, b, n int64

	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&n)

	if n < b {
		fmt.Println(a * n / b)
	} else {
		fmt.Println(a * (b - 1) / b)
	}
}
