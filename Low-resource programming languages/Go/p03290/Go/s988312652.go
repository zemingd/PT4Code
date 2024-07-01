package main

import "fmt"

func main() {
	var D, G int
	fmt.Scan(&D, &G)

	p := make([]int, D)
	c := make([]int, D)
	for i := range p {
		fmt.Scan(&p[i], &c[i])
	}

	minCnt := 0
	for bit := 0; bit <= 1<<uint(D); bit++ {
		ans := 0
		cnt := 0
		for i := 0; i < D; i++ {
			if bit&(1<<uint(i)) == (1 << uint(i)) {
				cnt += p[i]
				ans += p[i]*100*(i+1) + c[i]
			}
		}
		// fmt.Println(cnt, ans)
		if ans >= G && (minCnt == 0 || cnt < minCnt) {
			minCnt = cnt
		} else {
			for i := D - 1; i >= 0; i-- {
				if bit&(1<<uint(i)) == (1 << uint(i)) {
					continue
				}
				for j := 0; j < p[i]; j++ {
					if ans >= G {
						break
					}
					ans += 100 * (i + 1)
					cnt++
				}
				// TODO: check complete point
				if minCnt == 0 || cnt < minCnt {
					minCnt = cnt
				}
			}
		}
	}
	fmt.Println(minCnt)
}
