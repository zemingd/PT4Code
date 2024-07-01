package main

import "fmt"

func main() {
	var N, M, Q int
	fmt.Scan(&N, &M, &Q)

	sum := [501][501]int{}
	var l, r int
	for i := 0; i < M; i++ {
		fmt.Scan(&l, &r)
		sum[l][r]++
	}

	for i := 0; i < N; i++ {
		for j := 0; j < N; j++ {
			sum[i+1][j+1] += sum[i+1][j] + sum[i][j+1] - sum[i][j]
		}
	}

	var p, q int
	for i := 0; i < Q; i++ {
		fmt.Scan(&p, &q)
		p--
		ans := sum[q][q] - sum[q][p] - sum[p][q] + sum[p][p]
		fmt.Println(ans)
	}
}
