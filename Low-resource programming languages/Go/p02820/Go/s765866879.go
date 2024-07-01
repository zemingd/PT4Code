package main

import "fmt"

// R - win by rock point
var R int

// S - win by sissors point
var S int

// P - win by paper point
var P int

func main() {
	var N, K int
	fmt.Scan(&N, &K, &R, &S, &P)
	var T string
	fmt.Scan(&T)
	type s struct {
		data []byte
	}
	ss := make([]s, K)
	for i := 0; i < N; i++ {
		ss[i%K].data = append(ss[i%K].data, T[i])
	}
	ans := 0
	for i := 0; i < K; i++ {
		// fmt.Printf("i %d -> substring %s\n", i, string(ss[i].data))
		L := len(ss[i].data)
		dp := make([][3]int, L+2) // j回ジャンケンをした結果の最大得点
		// 初期値は0
		// あり得る遷移のパターン
		// dp[j][0] => dp[j+1][1], dp[j+1][2]
		// dp[j][1] => dp[j+1][0], dp[j+1][2]
		// dp[j][2] => dp[j+1][0], dp[j+1][1]
		for j := 0; j < L; j++ {
			// 直前と同じ手は出せない制約下で得点を最大化する
			dp[j+1][0] = max(dp[j][1]+winp(ss[i].data[j], 'r'), dp[j][2]+winp(ss[i].data[j], 'r'))
			dp[j+1][1] = max(dp[j][0]+winp(ss[i].data[j], 's'), dp[j][2]+winp(ss[i].data[j], 's'))
			dp[j+1][2] = max(dp[j][0]+winp(ss[i].data[j], 'p'), dp[j][1]+winp(ss[i].data[j], 'p'))
		}
		sub := max(dp[L][0], max(dp[L][1], dp[L][2]))
		// fmt.Printf("i %d, sub %d, dp %v\n", i, sub, dp)
		ans += sub
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
	if c == p {
		r = 0
	} else if c == 'r' && p == 'p' {
		r = P
	} else if c == 's' && p == 'r' {
		r = R
	} else if c == 'p' && p == 's' {
		r = S
	} else {
		r = 0
	}
	return r
}
