package main

import "fmt"

func main() {
	var N, M, K, L int
	fmt.Scan(&N, &M)
	score := make(map[int]int, M)
	for i := 0; i < N; i++ {
		fmt.Scan(&K)
		for j := 0; j < K; j++ {
			fmt.Scan(&L)
			score[L]++
		}
	}
	c := 0
	for _, p := range score {
		if p == N {
			c++
		}
	}
	fmt.Println(c)
}
