package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)
	A := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &A[i])
	}

	next := A[0]
	pattern := []int{1}
	counter := make([]int, N)
	for i := 0; i < N; i++ {
		counter[i] = 0
	}
	counter[0]++
	for {
		pattern = append(pattern, next)
		counter[next-1]++
		if counter[next-1] > 1 {
			break
		}
		next = A[next-1]
	}
	patternFastIndex := next
	var patternA, patternB []int
	if patternFastIndex == 1 {
		patternA = pattern[:patternFastIndex-1]
		patternB = pattern[patternFastIndex-1 : len(pattern)-1]
	} else {
		patternA = pattern[:patternFastIndex]
		patternB = pattern[patternFastIndex : len(pattern)-1]
	}
	if K >= len(patternA) {
		fmt.Println(patternB[(K-len(patternA))%len(patternB)])
	} else {
		fmt.Println(patternA[K%len(patternA)])
	}
}
