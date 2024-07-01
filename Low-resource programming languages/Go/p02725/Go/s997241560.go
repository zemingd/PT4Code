package main

import (
	"fmt"
)

func main() {
	var K, N int
	fmt.Scan(&K, &N)
	home := make([]int, N)
	for i := 0; i < N; i++ {
		var m int
		fmt.Scan(&m)
		home[i] = m
	}
	var minm int
	for i := 0; i < N; i++ {
		if i == 0 {
			minm = K - (home[i] + K - home[N-1])
			minm = min(minm, K-(home[i+1]-home[i]))
			continue
		}
		if i == N-1 {
			minm = min(minm, K-(home[i]-home[i-1]))
			break
		}
		minm = min(minm, K-(home[i]-home[i-1]))
		minm = min(minm, K-(home[i+1]-home[i]))
	}
	fmt.Println(minm)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
