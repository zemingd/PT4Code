package main

import (
	"fmt"
	"sort"
)

func main() {
	// Code for C - Energy Drink Collector
	var N, M int
	fmt.Scanf("%d %d", &N, &M)

	A := make(map[int]int, N)
	B := make([]int, N)
	var a, b int
	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &a, &b)
		A[a] = b
		B[i] = a
	}

	var count int
	var cost int
	sort.Sort(sort.IntSlice(B))

	for i := 0; i < N; i++ {

		if M >= count+A[B[i]] {
			count += A[B[i]]
			cost += A[B[i]] * B[i]
		} else {
			cost += (M - count) * B[i]
			count = M
		}

		if count == M {
			break
		}
	}

	fmt.Println(cost)
}
