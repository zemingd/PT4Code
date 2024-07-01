package main

import (
	"fmt"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	var N int
	fmt.Scan(&N)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		A[i] = a
	}
	L := make([]int, N)
	R := make([]int, N)
	L[0] = A[0]
	R[N-1] = A[N-1]
	for i := 1; i < N; i++ {
		L[i] = gcd(L[i-1], A[i])
		R[N-1-i] = gcd(R[N-i], A[N-1-i])
	}

	ans := 1
	for i := 1; i < N-1; i++ {
		ans = max(ans, gcd(L[i-1], R[i+1]))
	}
	ans = max(ans, L[N-2])
	ans = max(ans, R[1])

	fmt.Println(ans)
}
