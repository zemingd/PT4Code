package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	if k <= a {
		fmt.Println(a-k, b)
	} else {
		fmt.Println(0, min(a+b-k, 0))
	}
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
