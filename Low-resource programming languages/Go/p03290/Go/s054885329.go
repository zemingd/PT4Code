package main

import (
	"fmt"
	"math"
)

func main() {
	var (
		D, G int
	)
	fmt.Scan(&D, &G)
	p := make([]int, D)
	c := make([]int, D)
	for i := 0; i < D; i++ {
		fmt.Scan(&p[i], &c[i])
	}
	ans := 9223372036854775807
	for mask := 0; mask < (1 << D); mask++ {
		var score, num int
		restMax := -1
		for i := 0; i < D; i++ {
			if mask >> i & 1 != 0 {
				score += 100 * (i+1) * p[i] + c[i]
				num += p[i]
			} else {
				restMax = i
			}
		}
		if score < G {
			nextScore := 100 * (restMax + 1)
			remainNum := (G - score + nextScore - 1) / nextScore
			if remainNum >= p[restMax] {
				continue
			}
			num += remainNum
		}
		ans = int(math.Min(float64(ans), float64(num)))
	}
	fmt.Println(ans)
}
