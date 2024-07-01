package main

import "fmt"

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var K, X int
	fmt.Scan(&K, &X)
	from := max(X-K+1, -1000000)
	to := min(X+K-1, 1000000)

	for i := from; i <= to; i++ {
		if i != from {
			fmt.Print(" ")
		}
		fmt.Print(i)
	}
	fmt.Println()
}
