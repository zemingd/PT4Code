package main

import (
	"fmt"
)

func sum(a []int) int {
	s := 0
	for _,e := range a {
		s += e
	}
	return s
}

func abs(a int) int {
	if a<0 {
		return -a
	}
	return a
}

func main() {
	var n int
	fmt.Scan(&n)

	w := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&w[i])
	}

	s1,s2 := 0,sum(w)
	ans := s2 - s1
	for i := 0; i < n; i++ {
		s1 += w[i]
		s2 -= w[i]
		if ans > abs(s2-s1) {
			ans = abs(s2-s1)
		}
	}

	fmt.Println(ans)
}
