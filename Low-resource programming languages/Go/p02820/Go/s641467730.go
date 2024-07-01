package main

import "fmt"

var pR, pS, pP int

func main() {
	var N, K int
	fmt.Scan(&N, &K, &pR, &pS, &pP)
	var T string
	fmt.Scan(&T)
	ss := make([][]byte, K)
	for i := 0; i < N; i++ { // mod Kのグループに分ける
		ss[i%K] = append(ss[i%K], T[i])
	}
	ans := 0
	for i := 0; i < len(ss); i++ {
		// fmt.Println("i", i, "ss[i]", string(ss[i]))
		L := len(ss[i])
		dp := make([][3]int, L+1) // DPテーブル
		for j := 0; j < L; j++ {
			r := winp(ss[i][j], 'r')
			s := winp(ss[i][j], 's')
			p := winp(ss[i][j], 'p')
			// 二回連続で同じ手を出せない条件でDPする
			dp[j+1][0] = max(dp[j][1]+r, dp[j][2]+r)
			dp[j+1][1] = max(dp[j][0]+s, dp[j][2]+s)
			dp[j+1][2] = max(dp[j][0]+p, dp[j][1]+p)
		}
		// fmt.Println("i", i, "dp[i]", dp)
		ans += max(dp[L][0], max(dp[L][1], dp[L][2]))
	}
	fmt.Println(ans)
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func winp(c, p byte) (r int) {
	if c != p {
		if p == 'r' && c == 's' {
			r = pR
		} else if p == 's' && c == 'p' {
			r = pS
		} else if p == 'p' && c == 'r' {
			r = pP
		}
	}
	return r
}
