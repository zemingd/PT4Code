package main

import (
	"fmt"
	"sort"
)

type Set struct {
	price int
	num   int
}
type Shop []Set

func main() {
	var N, M int
	fmt.Scan(&N, &M)
	A := make([]int, N)
	B := make([]int, N)
	G := make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&A[i], &B[i])
		G[i] = A[i]
	}
	sort.Sort(sort.IntSlice(G))

	var sum, tmp int
	for x := range G {
		for y := range A {
			if G[x] == A[y] {
				for z := 0; z < B[y]; z++ {
					sum += A[y]
					tmp++
					if tmp == M {
						break
					}
				}
			}
			if tmp == M {
				break
			}
		}
		if tmp == M {
			break
		}
	}

	fmt.Println(sum)
}
