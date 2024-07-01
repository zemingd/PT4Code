package main

import "fmt"

func main() {
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	if (B-A)%2 == 0 {
		fmt.Println((B - A) / 2)
		return
	}
	fmt.Println(Min(Max(A-1, B-1), Max(N-A, N-B)))
}

func Min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
