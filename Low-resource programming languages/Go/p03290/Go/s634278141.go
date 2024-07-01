package main

import "fmt"

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var D, G int
	fmt.Scan(&D, &G)
	p := make([]int, D)
	c := make([]int, D)
	for i := range p {
		fmt.Scan(&p[i])
		fmt.Scan(&c[i])
	}

	ans := 10000
	for bit := 0; bit < (1 << uint(D)); bit++ {
		score, solved, restmax := 0, 0, -1
		ok := false
		for j := 0; j < D; j++ {
			if bit&(1<<uint(j)) != 0 {
				score += (j+1)*100*p[j] + c[j]
				solved += p[j]
			} else {
				restmax = j
			}
		}
		if score < G {
			for k := 0; k < p[restmax]; k++ {
				score += (restmax + 1) * 100
				solved++
				if score >= G {
					ok = true
					break
				}
			}
		} else {
			ok = true
		}
		if ok {
			ans = min(ans, solved)
		}
	}
	fmt.Println(ans)
}
