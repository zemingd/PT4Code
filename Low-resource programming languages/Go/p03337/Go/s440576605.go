package main

import "fmt"

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	fmt.Println(max(a+b, max(a-b, a*b)))
}
