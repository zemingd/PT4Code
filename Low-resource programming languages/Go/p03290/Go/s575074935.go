package main

import (
	"fmt"
)

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}

func perf(rem, i, pi, ci int) int {
	return min(rem, (i+1)*100*pi+ci) / pi
}

func main() {
	var D, G int
	fmt.Scan(&D, &G)
	ps := make([]int, D)
	cs := make([]int, D)
	for i := range ps {
		fmt.Scan(&ps[i])
		fmt.Scan(&cs[i])
	}

	ans := G
	for mask := 0; mask < 1<<uint(D); mask++ {
		rest_max := -1
		s := 0
		num := 0
		for i := 0; i < D; i++ {
			if mask>>uint(i)&1 == 1 {
				s += 100*(i+1)*ps[i] + cs[i]
				num += ps[i]
			} else {
				rest_max = i
			}
		}
		if s < G {
			s1 := 100 * (rest_max + 1)
			need := (G - s + s1 - 1) / s1
			if need >= ps[rest_max] {
				continue
			}
			num += need
		}
		ans = min(ans, num)
	}
	fmt.Println(ans)
}
