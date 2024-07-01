package main

import "fmt"

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	for i := A; i <= min(B, A+K-1); i++ {
		fmt.Println(i)
	}
	for i := max(A+K, B-K+1); i <= B; i++ {
		fmt.Println(i)
	}
}

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