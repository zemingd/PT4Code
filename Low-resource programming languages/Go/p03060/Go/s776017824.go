package main

import "fmt"

var V, C []int

func main() {
	var N int
	fmt.Scan(&N)

	V = make([]int, N)
	C = make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&V[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&C[i])
	}
	fmt.Println(dfs(0, 0, N-1))
}

func dfs(v int, c int, n int) int {
	if n < 0 {
		return v - c
	}

	x := dfs(v+V[n], c+C[n], n-1)
	y := dfs(v, c, n-1)

	if x < y {
		return y
	}
	return x
}
