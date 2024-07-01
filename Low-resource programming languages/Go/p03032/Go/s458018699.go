// 右からi左からj取ったら捨てるのはK-i-j個でこれは価値の小さいものから選べばよさそう
package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	V := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&V[i])
	}
	ans := -1 * int(1e18)
	for i := 0; i <= min(N, K); i++ {
		left := V[:i]
		for j := 0; j <= min(N, K)-i; j++ {
			right := V[N-j:]
			cur := append([]int{}, left...)
			cur = append(cur, right...)
			sort.Ints(cur)
			if len(cur) == 0 {
				continue
			}
			// 負だけとれるだけとればいいんだけどめんどくさいのでループ
			for k := 0; k <= K-i-j; k++ {
				tmp := 0
				for _, c := range cur[min(k, len(cur)):] {
					tmp += c
				}
				ans = max(ans, tmp)
			}
		}
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
