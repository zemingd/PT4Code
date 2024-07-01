package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for C - Attention
	var N int
	fmt.Scanf("%d", &N)

	var S string
	fmt.Scanf("%s", &S)

	Ecount := make([]int, N)
	var temp1 int
	for i := 0; i < N; i++ {
		if S[i] == 'E' {
			temp1++
		}
		Ecount[i] = temp1
	}

	Wcount := make([]int, N)
	var temp2 int
	for i := N - 1; 0 <= i; i-- {
		if S[i] == 'W' {
			temp2++
		}
		Wcount[i] = temp2
	}

	var count int
	var min int = N - Wcount[1] - 1
	for i := 1; i < N-1; i++ {
		count = N - Ecount[i-1] - Wcount[i+1] - 1
		if min > count {
			min = count
		}
	}
	min = int(math.Min(float64(min), float64(N-Ecount[N-2]-1)))
	fmt.Println(min)
}
