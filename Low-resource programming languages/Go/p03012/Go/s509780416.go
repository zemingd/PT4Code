package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	list := make([]int, n)
	total := 0
	for i:=0; i<n; i++ {
		fmt.Scan(&list[i])
		total += list[i]
	}
	s1 := 0
	ans := 10000000
	for i:=0; i<n; i++ {
		s1 += list[i]
		s2 := total - s1
		if ans > abs(s1-s2) {
			ans = abs(s1-s2)
		}
	}
	fmt.Println(ans)
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
