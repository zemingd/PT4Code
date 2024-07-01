package main

import "fmt"

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var D, G int
	fmt.Scan(&D, &G)
	p := make([]int, D)
	c := make([]int, D)
	for i := 0; i < D; i++ {
		fmt.Scan(&p[i], &c[i])
	}

	ans := 10000000
	for bit := uint(0); bit < (1 << uint(D)); bit++ {
		sum := 0
		cnt := 0
		for i := 0; i < D; i++ {
			if bit&(1<<uint(i)) > 0 {
				sum += p[i]*(100*(i+1)) + c[i]
				cnt += p[i]
			}
		}

		// コンプだけで超えた場合
		if sum >= G {
			ans = min(ans, cnt)
			continue
		}

		// 足りない分をコンプしていない大きい問題から回答
		for i := D - 1; i >= 0; i-- {
			if bit&(1<<uint(i)) > 0 {
				continue
			}
			for j := 0; j < p[i]; j++ {
				sum += 100 * (i + 1)
				cnt++
				if sum >= G {
					ans = min(ans, cnt)
					break
				}
			}
		}
	}
	fmt.Println(ans)
}
