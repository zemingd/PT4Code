package main

import "fmt"

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var N, L int
	fmt.Scan(&N, &L)
	s := 0
	ans := 100 * 200
	x := -1
	for i := 0; i < N; i++ {
		s += L + i
		if abs(L+i) < ans {
			ans = abs(L + i)
			x = i
		}
	}
	fmt.Println(s - (L + x))
}
