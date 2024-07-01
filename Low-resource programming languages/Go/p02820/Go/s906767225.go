package main

import "fmt"

var transTab = map[byte]int{
	'r': 0,
	's': 1,
	'p': 2,
}

func max(i, j int) int {
	if i < j {
		return j
	} else {
		return i
	}
}

func main() {
	var N, K int
	var R, S, P int
	fmt.Scan(&N, &K)
	fmt.Scan(&R, &S, &P)
	var T string
	fmt.Scan(&T)
	ans := 0
	pointTab := []int{R, S, P}
	for s := 0; s < K; s++ {
		dp := make([][]int, N+10)
		for i := range dp {
			dp[i] = make([]int, 3)
		}
		for h := 0; h < 3; h++ {
			t := T[s]
			h0 := ((transTab[t]-1)%3 + 3) % 3
			if h == h0 {
				dp[1][h] = pointTab[h]
			} else {
				dp[1][h] = 0
			}
		}
		maxi := 0
		for i := 1; s+i*K < N; i++ {
			t := T[s+i*K]
			// tに勝つ手
			h0 := ((transTab[t]-1)%3 + 3) % 3
			for h1 := 0; h1 < 3; h1++ {
				for h2 := 0; h2 < 3; h2++ {
					if h1 == h2 {
						continue
					}
					point := 0
					if h1 == h0 {
						point = pointTab[h0]
					}
					dp[i+1][h1] = max(dp[i+1][h1], dp[i][h2]+point)
				}
			}
			maxi = i
		}
		tmp := max(dp[maxi+1][0], dp[maxi+1][1])
		tmp = max(tmp, dp[maxi+1][2])
		ans += tmp
	}
	fmt.Println(ans)
}
