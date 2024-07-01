package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	rA := A - min(A, K)
	if rA > 0 {
		fmt.Println(rA, B)
	} else {
		rB := B - min(B, K-A)
		fmt.Println(0, rB)
	}
}
