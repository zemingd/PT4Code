package main

import "fmt"

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}

func main() {
	var x, k int
	fmt.Scan(&k, &x)
	for i := max(x-k+1, -100000); i <= min(x+k-1, 100000); i++ {
		fmt.Print(i, " ")
	}
	fmt.Println()
}
