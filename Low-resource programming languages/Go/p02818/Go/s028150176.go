package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	if k <= a {
		fmt.Println(a-k, b)
	} else {
		fmt.Println(0, max(a+b-k, 0))
	}
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
