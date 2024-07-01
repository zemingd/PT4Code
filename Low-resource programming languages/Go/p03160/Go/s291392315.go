package main

import "fmt"

import "math"

/*
N 個の足場があって、i番目の足場の高さは hi です。
最初、足場 1 にカエルがいて、ぴょんぴょん跳ねながら足場 N へと向かいます。カエルは足場 i にいるときに

足場 i から足場 i+1 へと移動する (そのコストは |h(i)−h(i+1)|)
足場 i から足場 i+2 へと移動する (そのコストは |h(i)−h(i+2)|)
のいずれかの行動を選べます。カエルが足場 1 から足場 N へと移動するのに必要な最小コストを求めよ。

[input]
4
10 30 40 20

[output]
30
*/

func min(a int, b int) int {
	if a <= b {
		return a
	} else {
		return b
	}
}

func main() {
	var n int
	fmt.Scan(&n)
	h := make([]int, n+1)
	dp := make([]int, n+1)

	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
		dp[i] = int(math.Pow(10, 5))
	}

	dp[0] = 0
	for i := 0; i < n-1; i++ {
		dp[i+1] = min(dp[i]+int(math.Abs(float64(h[i]-h[i+1]))), dp[i+1])
		dp[i+2] = min(dp[i]+int(math.Abs(float64(h[i]-h[i+2]))), dp[i+2])
	}

	fmt.Println(dp[n-1])
}
