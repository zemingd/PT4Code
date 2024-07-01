package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	for i := a; i <= min(b, a+k-1); i++ {
		fmt.Println(i)
	}
	for i := max(b-k+1, a+k); i <= b; i++ {
		fmt.Println(i)
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
