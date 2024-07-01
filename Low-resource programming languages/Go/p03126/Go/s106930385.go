package main

import "fmt"

func main() {
	var N, M, K, L int
	fmt.Scan(&N, &M)
	point := make(map[int]int, M)
	for i := 0; i < N; i++ {
		fmt.Scan(&K)
		for y := 0; y < K; y++ {
			fmt.Scan(&L)
			point[L]++
		}
	}
	c := 0
	for _, p := range point {
		if p == N {
			c++
		}
	}
	fmt.Println(c)
}
