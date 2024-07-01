package main

import (
	"fmt"
	"sort"
)

func main() {
	var d, g int
	fmt.Scan(&d, &g)

	c := make([]int, d)
	p := make([]int, d)
	for i := 0; i < d; i++ {
		fmt.Scan(&p[i], &c[i])
	}

	ans := 9999
	for bits := 0; bits < (1 << uint(d)); bits++ {
		sc, n := 0, 0
		usable := make([]int, d)
		for i := 0; i < d; i++ {
			usable[i] = i
		}
		for i := 0; i < d; i++ {
			if bits&(1<<uint(i)) > 0 {
				sc += c[i] + p[i]*100*(i+1)
				n += p[i]
				usable[i] = -1
			}
		}
		if sc >= g {
			ans = min(ans, n)
			continue
		}
		sort.Ints(usable)
		k := usable[len(usable)-1]
		if m := ceilDiv((g - sc), (100 * (k + 1))); m <= p[k]-1 {
			ans = min(ans, n+m)
		}
	}

	fmt.Println(ans)
}

func ceilDiv(x, y int) int {
	if x%y > 0 {
		return x/y + 1
	}
	return x / y
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}
