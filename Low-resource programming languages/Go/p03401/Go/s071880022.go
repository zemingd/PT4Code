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

	for i := 1; i < N+1; i++ {
		ans := 0
		for j := 1; j < N+1; j++ {
			if i == j {
				ans += Abs(A[j-1] - A[j+1])
				j++
			} else {
				ans += Abs(A[j-1] - A[j])
			}
		}
		if i != N {
			ans += Abs(A[N])
		}
		fmt.Println(ans)
	}

	// s := make([]int, N+1)
	// for i := 1; i < N+1; i++ {
	// 	s[i] = s[i-1] + Abs(A[i-1]-A[i])
	// }

	// fmt.Println(s)

	// for i := 0; i < N; i++ {
	// 	ans := s[N]
	// 	if A[i] > A[i+1] {
	// 		ans -= s[i+1]
	// 	}

	// 	if i != N-1 {
	// 		ans += Abs(A[N])
	// 	} else {
	// 		ans += Abs(A[N-1])
	// 	}
	// 	fmt.Println(ans)
	// }
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
