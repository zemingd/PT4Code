package main

import (
	"fmt"
)

var n, k, r, s, p int
var t string

func main() {
	fmt.Scan(&n)
	fmt.Scan(&k)
	fmt.Scan(&r)
	fmt.Scan(&s)
	fmt.Scan(&p)
	fmt.Scan(&t)
	fmt.Println(t)
	//initialize dp array
	var dp = make([][]int, n)
	for i := 0; i < n; i++ {
		dp[i] = make([]int, 3)
	}
	for i := 0; i < k; i++ {
		for j := 0; j < 3; j++ {
			dp[i][j] = score(i, j)
		}
	}
	for i := 0; i+k < n; i++ {
		for j := 0; j < 3; j++ {
			var nextHand int
			nextHand = (j + 1) % 3
			if dp[i+k][nextHand] < dp[i][j]+score(i+k, nextHand) {
				dp[i+k][nextHand] = dp[i][j] + score(i+k, nextHand)
			}
			nextHand = (j + 2) % 3
			if dp[i+k][nextHand] < dp[i][j]+score(i+k, nextHand) {
				dp[i+k][nextHand] = dp[i][j] + score(i+k, nextHand)
			}
		}
	}
	var answer int
	for i := n - k; i < n; i++ {
		var subMax int
		for j := 0; j < 3; j++ {
			if subMax < dp[i][j] {
				subMax = dp[i][j]
			}
		}
		answer += subMax
	}
	fmt.Println(answer)
}

func score(loc, hand int) int {
	if loc >= n {
		return 0
	}
	var opponentHand = t[loc]
	if hand == 0 && opponentHand == 's' {
		return r
	}
	if hand == 1 && opponentHand == 'p' {
		return s
	}
	if hand == 2 && opponentHand == 'r' {
		return p
	}
	return 0
}
