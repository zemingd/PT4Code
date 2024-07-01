package main

import "fmt"

func main() {
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	fmt.Printf("%d\n", min(A*N, B))
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
