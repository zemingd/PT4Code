package main

import (
	"fmt"
)

func main() {
	var n, l int
	fmt.Scan(&n, &l)

	t := 0
	for i := 0; i < n; i++ {
		t += l + i
	}

	min := 99999
	ans := 0
	for i := 0; i < n; i++ {
		t2 := 0
		for j := 0; j < n; j++ {
			if j == i {
				continue
			}
			t2 += l + j
		}
		if abs(t-t2) < min {
			min = abs(t - t2)
			ans = t2
		}
	}

	fmt.Println(ans)
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
