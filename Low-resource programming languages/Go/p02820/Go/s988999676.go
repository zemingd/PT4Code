package main

import "fmt"

var r, s, p int
var (
	handMap = map[rune]int{
		'r': 0,
		's': 1,
		'p': 2,
	}
)

func main() {
	var N, K int
	var S string
	fmt.Scan(&N, &K)
	fmt.Scan(&r, &s, &p)
	fmt.Scan(&S)
	T := []rune(S)

	count := 0

	for k := 0; k < K; k++ {
		// mod K = k
		var hands []int
		for i := k; i < N; i += K {
			hands = append(hands, handMap[T[i]])
		}
		ll := len(hands)
		dp := make([][]int, 3)
		dp[0] = make([]int, ll)
		dp[1] = make([]int, ll)
		dp[2] = make([]int, ll)

		dp[0][0] = score(0, hands[0])
		dp[1][0] = score(1, hands[0])
		dp[2][0] = score(2, hands[0])
		for i := 1; i < ll; i++ {
			op := hands[i]
			dp[0][i] = max(dp[1][i-1], dp[2][i-1]) + score(0, op)
			dp[1][i] = max(dp[2][i-1], dp[0][i-1]) + score(1, op)
			dp[2][i] = max(dp[0][i-1], dp[1][i-1]) + score(2, op)
		}
		myScore := max3(dp[0][ll-1], dp[1][ll-1], dp[2][ll-1])
		count += myScore
	}
	fmt.Println(count)
}

// グー 0, ちょき 1, パー 2
func score(me, op int) int {
	// draw
	if me == op {
		return 0
	}
	// lose
	if (me+1)%3 != op%3 {
		return 0
	}
	if me == 0 {
		return r
	} else if me == 1 {
		return s
	}
	return p
}

func max3(a, b, c int) int {
	return max(a, max(b, c))
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
