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
		A[a] += b
		B[i] = a
	}

	var count float64
	var cost float64
	sort.Sort(sort.IntSlice(B))

	for i := 0; i < N; i++ {

		if M >= int(count)+A[B[i]] {
			count += float64(A[B[i]])
			cost += float64(A[B[i]] * B[i])
		} else {
			cost += float64((M - int(count)) * B[i])
			count = float64(M)
		}

		if int(count) == M {
			break
		}
	}

	fmt.Println(int(cost))
}
