package main

import "fmt"

func main() {
	var S string
	fmt.Scan(&S)
	dp := make([][]int, len(S)+1)
	for i := 0; i < len(S)+1; i++ {
		dp[i] = make([]int, 5)
	}
	dp[1][1] = 1
	for i := 1; i < len(S); i++ {
		for j := 1; j <= 4; j++ {
			if i-j < 0 {
				continue
			}
			t := S[i-j : i]
			for k := 1; k <= 4; k++ {
				if i+k > len(S) {
					continue
				}
				u := S[i : i+k]
				if t != u {
					dp[i+k][k] = Max(dp[i+k][k], dp[i][j]+1)
				}
			}
		}
	}
	fmt.Println(Max(dp[len(S)]...))
}

func Max(xs ...int) int {
	max := xs[0]
	for _, x := range xs[1:] {
		if max < x {
			max = x
		}
	}
	return max
}
