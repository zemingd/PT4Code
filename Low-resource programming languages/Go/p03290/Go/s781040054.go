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
		fmt.Scan(&p[i])
		fmt.Scan(&c[i])
	}

	ans := 10000000
	for i := 0; i < (1 << uint(D)); i++ {
		sum := 0
		cnt := 0
		for j := 0; j < D; j++ {
			if uint(i)&uint(j+1) > 0 {
				sum += p[j]*(100*(j+1)) + c[j]
				cnt += p[j]
			}
		}

		// コンプだけで超えた場合
		if sum >= G {
			ans = min(ans, cnt)
			continue
		}

		// 足りない分をコンプしていない大きい問題から回答
		for j := D; j > 0; j-- {
			if uint(i)&uint(j) > 0 {
				continue
			}
			s := sum
			t := cnt
			for k := 0; k < p[j-1]; k++ {
				s += 100 * j
				t++
				if G <= s {
					ans = min(ans, t)
					break
				}
			}
		}
	}
	fmt.Println(ans)
}
