package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	W := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &W[i])
	}
	min := 1000000000
	for t := 0; t < N; t++ {
		s1 := 0
		s2 := 0
		for i := 0; i < N; i++ {
			if i <= t {
				s1 += W[i]
			} else {
				s2 += W[i]
			}
		}
		diff := s1 - s2
		if diff < 0 {
			diff = -diff
		}
		if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}
