package main

import (
	"fmt"
)

func sum(l []int) int {
	s := 0
	for _, x := range l {
		s += x
	}
	return s
}

func abs(x int) int {
	if x >= 0 {
		return x
	} else {
		return -x
	}
}

func main() {
	var n int
	fmt.Scan(&n)
	w := make([]int, n)
	var ans, a int
	for i := 0; i < n; i++ {
		fmt.Scan(&w[i])
	}
	for i := 1; i < n; i++ {
		a = abs(sum(w[:i]) - sum(w[i:]))
		if ans == 0 || a <= ans {
			ans = a
		}
	}
	fmt.Println(ans)
}
