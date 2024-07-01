package main

import (
	"fmt"
)

// go run ./main.go < in

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	a := n % k
	b := k - (n % k)

	if a >= b {
		fmt.Println(b)
	} else {
		fmt.Println(a)
	}
}
