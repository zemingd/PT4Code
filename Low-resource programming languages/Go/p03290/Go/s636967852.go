package main

import (
	"fmt"
	"math"
)

func main() {
	var (
		D, G int
		ans = math.MaxInt32
	)
	fmt.Scan(&D, &G)
	p := make([]int, D+10)
	c := make([]int, D+10)

	for i := 0; i < D; i++ {
		fmt.Scan(&p[i], &c[i])
	}

	for bit := 0; bit < (1 << D); bit++ {
		s, num, max := 0, 0, 0
		for i := 0; i < D; i++ {
			if (bit >> i) & 1 == 1 {
				s += 100 * (i+1) * p[i]  + c[i]
				num += p[i]
			} else {
				max = i
			}
		}
		if s < G {
			s1 := 100 * (max + 1)
			need := (G - s + s1 - 1) / s1
			if need >= p[max] {
				continue
			}
			num += need
		}
		ans = int(math.Min(float64(ans), float64(num)))
	}
	fmt.Println(ans)
}
