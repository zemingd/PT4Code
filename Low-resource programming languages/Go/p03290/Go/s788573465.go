package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var d, g int
	fmt.Scan(&d, &g)
	p, c := make([]int, d), make([]int, d)
	for i := range p {
		fmt.Scan(&p[i], &c[i])
	}

	ans := 1000000000
	for mask := 0; mask < (1 << uint(d)); mask++ {
		s, num, restMax := 0, 0, -1
		for i := 0; i < d; i++ {
			if mask>>uint(i)&1 == 1 {
				s += 100*(i+1)*p[i] + c[i]
				num += p[i]
			} else {
				restMax = i
			}
		}
		if s < g {
			s1 := 100 * (restMax + 1)
			need := (g - s + s1 - 1) / s1
			if need >= p[restMax] {
				continue
			}
			num += need
		}
		ans = min(ans, num)
	}
	fmt.Println(ans)
}
