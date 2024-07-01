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
	if a == b {
		fmt.Println(2 * a)
	} else {
		fmt.Println(2*max(a, b) - 1)
	}
}
