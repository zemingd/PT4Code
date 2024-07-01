package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	var S string
	fmt.Scan(&S)

	westAccoum := make([]int, N)
	eastAccoum := make([]int, N)
	for i := 0; i < N; i++ {
		if string(S[i]) == "W" {
			westAccoum[i] = 1
		} else {
			eastAccoum[i] = 1
		}
		if i != 0 {
			westAccoum[i] += westAccoum[i-1]
			eastAccoum[i] += eastAccoum[i-1]
		}
	}

	min := N
	for i := 0; i < N; i++ {
		count := 0
		if i != 0 {
			count += westAccoum[i-1]
		}
		if i != N-1 {
			count += eastAccoum[N-1] - eastAccoum[i+1]
		}
		if count < min {
			min = count
		}
	}

	fmt.Println(min)
}
