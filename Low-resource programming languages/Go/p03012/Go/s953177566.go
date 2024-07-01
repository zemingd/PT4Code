package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d\n", &n)
	var ws []int
	for i := 0; i < n; i++ {
		var x int
		fmt.Scanf("%d", &x)
		ws = append(ws, x)
	}

	sum := 0
	for _, w := range ws {
		sum += w
	}
	ans := sum
	s1 := 0
	for _, w := range ws {
		s1 += w
		s2 := sum - s1
		var x int
		if s2 > s1 {
			x = s2 - s1
		} else {
			x = s1 - s2
		}
		if x < ans {
			ans = x
		}
	}
	fmt.Println(ans)
}
