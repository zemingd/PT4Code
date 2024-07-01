package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var N int
	fmt.Scan(&N)
	B := make([]int, N)
	for i := 1; i < N; i++ {
		fmt.Scan(&B[i])
	}
	B[0] = B[1]

	ans := B[N-1]
	for i := 1; i < N; i++ {
		t := min(B[i-1], B[i])
		ans += t
	}
	fmt.Println(ans)
}
