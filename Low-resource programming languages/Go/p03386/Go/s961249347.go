package main

import (
	"fmt"
)

func p(a []int) {
	for i := range a {
		fmt.Println(a[i])
	}
}

func main() {
	var A, B, K, N int
	fmt.Scan(&A, &B, &K)
	N = B - A + 1
	a := make([]int, N)
	for i := 0; i < N; i++ {
		a[i] = A + i
	}
	if K > N {
		p(a)
	} else {
		dup := K*2 - N
		if dup < 0 {
			dup = 0
		}
		s := make([]int, 0)
		for i := 0; i < K-dup; i++ {
			s = append(s, a[i])
		}
		for i := len(a) - K; i < len(a); i++ {
			s = append(s, a[i])
		}
		p(s)
	}
}
