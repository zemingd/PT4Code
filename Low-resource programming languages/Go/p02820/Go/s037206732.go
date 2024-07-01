package main

import (
	"fmt"
	"bytes"
)

func main() {
	var n, k int
	var r, s, p int
	var t string
	fmt.Scanf("%d %d", &n, &k)
	fmt.Scanf("%d %d %d", &r, &s, &p)
	fmt.Scanf("%s", &t)
	grouped := splitToGroups(t, k)
	max := 0
	for i := 0; i < k; i++ {
		max += calcMaxPoint(r, s, p, grouped[i])
	}
	answer := max
	fmt.Println(answer)
}

func splitToGroups(t string, k int) []string {
	builders := make([]bytes.Buffer, k)
	for i, v := range t {
		index := i % k
		builders[index].WriteRune(v)
	}

	groups := make([]string, k)
	for i := 0; i < k; i++ {
		groups[i] = builders[i].String()
	}
	return groups
}

const R = 0
const S = 1
const P = 2

var AllHands = [...]int{R, S, P}

func nextHand(hand int) int {
	if hand != P {
		return hand + 1
	}
	return R
}

func calcMaxPoint(r, s, p int, grouped string) int {
	dp := make([][]int, len(grouped)+1) //i 回目まで j:1回前の手, 値 利得の最大値
	dp[0] = make([]int, 3)              // r, s, p
	for i, v := range grouped {
		dp[i+1] = make([]int, 3) // r, s, p
		setMaxPoint(int(v), i, r, s, p, &dp)
	}
	return max(max(dp[len(grouped)][R], dp[len(grouped)][S]), dp[len(grouped)][P])
}

func setMaxPoint(hand, i, r, s, p int, dpPointer *[][]int) {
	dp := *dpPointer
	for _, h := range AllHands {
		dp[i+1][h] = max(dp[i][nextHand(h)], dp[i][nextHand(nextHand(h))])
	}
	switch hand {
	case 'r':
		dp[i+1][P] = max(dp[i][S], dp[i][R]) + p
	case 's':
		dp[i+1][R] = max(dp[i][S], dp[i][P]) + r
	case 'p':
		dp[i+1][S] = max(dp[i][P], dp[i][R]) + s
	}
}

func max(x, y int) int {
	if x < y {
		return y
	}
	return x
}
