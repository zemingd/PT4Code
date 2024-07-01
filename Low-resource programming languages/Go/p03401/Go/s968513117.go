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

	s := make([]int, N+2)
	for i := 1; i < N+2; i++ {
		s[i] = s[i-1] + Abs(A[i-1]-A[i])
	}

	for i := 1; i < N+1; i++ {
		ans := s[i-1] + (s[N+1] - s[i+1]) + Abs(A[i-1]-A[i+1])
		fmt.Println(ans)
	}
}

func Abs(x int) int {
	if x > 0 {
		return x
	}
	return -x
}
