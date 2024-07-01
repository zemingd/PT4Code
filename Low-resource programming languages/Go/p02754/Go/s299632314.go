package main

import "fmt"

func main() {
	var N, A, B int
	fmt.Scan(&N, &A, &B)
	fmt.Println(N/(A+B)*A + Min(A, N%(A+B)))
}

func Min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
