package main

import "fmt"

func main() {
	// Code for C - Prison
	var N, M int
	fmt.Scanf("%d %d", &N, &M)

	var L, R int
	ans := make(map[int]int, N)
	for i := 0; i < M; i++ {
		fmt.Scanf("%d %d", &L, &R)
		for j := L; j <= R; j++ {
			ans[j]++
		}
	}

	var count int
	for _, v := range ans {
		if v == M {
			count++
		}
	}

	fmt.Println(count)
}
