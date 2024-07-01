package main

import (
	"fmt"
)

var N int
var A []int

func main() {
	fmt.Scanf("%d", &N)

	A = make([]int, N+2)

	for i := 1; i < N+1; i++ {
		fmt.Scanf("%d", &A[i])
	}

	s := make([]int, N+1)
	for i := 1; i < N+1; i++ {
		s[i] = s[i-1] + Abs(A[i-1]-A[i])
	}

	for i := 1; i < N+1; i++ {
		var ans int
		if i == N {
			ans = s[N]
			ans += Abs(A[N-1]) - (s[N] - s[N-1])
		} else {
			ans = s[i-1] + (s[N] - s[i+1]) + Abs(A[i-1]-A[i+1])
			ans += Abs(A[N])
		}
		fmt.Println(ans)
	}
}

func Abs(x int) int {
	if x > 0 {
		return x
	}
	return -x
}

func Max(x, y int) int {
	if x > y {
		return x
	}
	return y
}
