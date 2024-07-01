package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	fmt.Println(min(n%k, abs(n%k, k)))
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func abs(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}
