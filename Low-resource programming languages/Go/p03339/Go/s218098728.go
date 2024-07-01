package main

import "fmt"

func main() {
	var N int
	var S string
	fmt.Scan(&N, &S)
	T := make([]int, N)
	if S[0] == 'E' {
		T[0] = 1
	}
	for i := 1; i < N; i++ {
		one_if_east := 0
		if S[i] == 'E' {
			one_if_east = 1
		}
		T[i] = T[i-1] + one_if_east
	}
	min := int(1E6)
	for i := 0; i < N; i++ {
		l := 0
		if i != 0 {
			l = T[i-1]
		}
		r := T[N-1] - T[i]
		lcnt := i - l
		rcnt := r
		need_turn := lcnt + rcnt
		if need_turn < min {
			min = need_turn
		}
	}
	fmt.Println(min)
}

func sum(slice []int) int {
	s := 0
	for _, d := range slice {
		s += d
	}
	return s
}
