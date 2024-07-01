package main

import (
	"fmt"
)

var D, G int
var ps, cs []int

func main() {
	fmt.Scan(&D, &G)
	ps = make([]int, D)
	cs = make([]int, D)
	for i := range ps {
		fmt.Scan(&ps[i], &cs[i])
	}
	search()
}

func search() {
	ans := 1 << 60

	for bit := 0; bit < (1 << uint(D)); bit++ {
		pts := 0
		qs := 0
		left := make([]int, 0, D)
		// complete
		for i := 0; i < D; i++ {
			if (bit>>uint(i))&1 == 1 {
				qs += ps[i]
				pts += pt(i)*ps[i] + cs[i]
			} else {
				left = append(left, i)
			}
		}
		if pts >= G {
			chmin(&ans, qs)
			continue
		}
		// incomplete by greedy
		for j := len(left) - 1; j >= 0; j-- {
			i := left[j]
			for k := 1; k < ps[i]; k++ {
				qs++
				pts += pt(i)
				if pts >= G {
					break
				}
			}
			if pts >= G {
				break
			}
		}
		if pts >= G {
			chmin(&ans, qs)
		}
	}
	fmt.Println(ans)
}

func pt(i int) int {
	return 100 * (i + 1)
}

func chmin(a *int, b int) {
	if *a > b {
		*a = b
	}
}
