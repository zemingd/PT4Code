package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {

	var X, N, number, Result, A int
	fmt.Scanf("%d %d", &X, &N)

	if N == 0 {
		fmt.Println(X)
	} else {

		p := make([]int, N)
		for i := 0; i < N; i++ {
			fmt.Scanf("%d", &p[i])
		}

		sort.Ints(p)
		number = 0
		Result = X
		A = 0
		for i := 0; i < 100; i++ {
			if p[number] == i {
				if number < N-1 {
					number++
				}
				continue
			} else {
				if Result > int(math.Abs(float64(X-i))) {
					Result = int(math.Abs(float64(X - i)))
					A = i
				}
			}
		}
		fmt.Println(A)
	}
}