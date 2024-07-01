package main

import "fmt"

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)

	A := make([]int, n+2)
	for i := 0; i < n; i++ {
		fmt.Scan(&A[i+1])
	}

	cstMax := 0
	for i := 0; i < n+1; i++ {
		cstMax += abs(A[i+1] - A[i])
	}

	for i := 1; i < n+1; i++ {
		ans := cstMax
		ans -= abs(A[i+1]-A[i]) + abs(A[i]-A[i-1])
		ans += abs(A[i+1] - A[i-1])

		fmt.Println(ans)
	}
}
