package main

import "fmt"

func main() {
	var N, M, Q int
	fmt.Scan(&N, &M, &Q)

	memo := make([][]int, N+1, N+1)
	for i := range memo {
		memo[i] = make([]int, N+1, N+1)
	}

	for i := 0; i < M; i++ {
		var l, r int
		fmt.Scan(&l, &r)
		memo[l][r] += 1
	}

	for i := 1; i <= N; i++ {
		for j := 1; j <= N; j++ {
			memo[i][j] += memo[i][j-1]
		}
	}

	for i := 1; i <= N; i++ {
		for j := 1; j <= N; j++ {
			memo[i][j] += memo[i-1][j]
		}
	}

	for i := 0; i < Q; i++ {
		var p, q int
		fmt.Scan(&p, &q)
		fmt.Println(memo[q][q] - memo[p-1][p-1] - memo[q][p-1] - memo[p-1][q])
	}
}
