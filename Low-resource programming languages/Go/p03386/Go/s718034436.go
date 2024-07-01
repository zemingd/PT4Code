package main

import "fmt"

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	var result []int
	for i := A; i <= min(B, A+K-1); i++ {
		result = append(result, i)
	}
	for i := max(A+K-1, B-K+1); i <= B; i++ {
		result = append(result, i)
	}
	for _, r := range result {
		fmt.Println(r)
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