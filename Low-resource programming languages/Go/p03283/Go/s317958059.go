package main

import (
	"fmt"
)

func main() {
	var n, m, q int
	fmt.Scan(&n, &m, &q)

	L, R := make([]int, m), make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&L[i], &R[i])
	}

	P, Q := make([]int, q), make([]int, q)
	for i := 0; i < q; i++ {
		fmt.Scan(&P[i], &Q[i])
	}

	T := make([][]int, n+1)
	for i := 0; i <= n; i++ {
		T[i] = make([]int, n+1)
	}
	for i := 0; i < m; i++ {
		T[L[i]][R[i]]++
	}

	for i := 0; i <= n; i++ {
		sum := 0
		for j := 0; j <= n; j++ {
			sum += T[i][j]
			T[i][j] = sum
		}
	}

	for i := 0; i < q; i++ {
		l, r := P[i], Q[i]
		num := 0
		for j := l; j <= r; j++ {
			num += T[j][r] - T[j][l-1]
		}
		fmt.Println(num)
	}
}
