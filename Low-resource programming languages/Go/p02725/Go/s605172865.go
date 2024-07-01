package main

import "fmt"

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func main() {
	var K, N int
	fmt.Scan(&K, &N)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&A[i])
	}
	maxi := 0
	for i := 1; i < N; i++ {
		maxi = max(maxi, A[i]-A[i-1])
	}
	maxi = max(maxi, K+A[0]-A[N-1])
	fmt.Println(K - maxi)
}
