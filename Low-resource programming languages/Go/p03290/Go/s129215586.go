package main

import (
	"fmt"
	"sort"
)

func main() {
	var D, G int
	fmt.Scan(&D, &G)
	p := make([]int, D)
	c := make([]int, D)
	for i := 0; i < D; i++ {
		fmt.Scan(&p[i], &c[i])
	}
	var counts []int
	for mask := 0; mask < 1<<uint(D); mask++ {
		ps := make([]bool, D)
		for i := 0; i < D; i++ {
			ps[i] = 1<<uint(i)&mask > 0
		}
		if total, ok := calc(ps, p, c, G); ok {
			counts = append(counts, total)
		}
	}
	sort.Ints(counts)
	fmt.Println(counts[0])
}

func calc(ps []bool, p, c []int, goal int) (int, bool) {
	problems := 0
	total := 0
	for i := 0; i < len(ps); i++ {
		if ps[i] {
			total += 100*(i+1)*p[i] + c[i]
			problems += p[i]
		}
	}
	if goal <= total {
		return problems, true
	}
	for i := len(ps) - 1; i >= 0; i-- {
		if ps[i] {
			continue
		}
		for j := 1; j < p[i]; j++ {
			total += 100 * (i + 1)
			problems++
			if goal <= total {
				return problems, true
			}
		}
	}
	return 0, false
}
