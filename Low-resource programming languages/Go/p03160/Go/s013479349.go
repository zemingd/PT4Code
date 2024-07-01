package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()

	h := make([]int, n+1)
	for i := 0; i < n; i++ {
		h[i] = nextInt()
	}
	dp := make([]int, n)
	for i := 0; i < n; i++ {
		dp[i] = -1
	}

	ans := dfs(0, n, h, dp)
	fmt.Println(ans)
}

// posからゴールまでの最小コストを返す関数
func dfs(pos int, n int, h []int, dp []int) int {
	// オーバーしていた場合は十分に大きいコストを返す
	if pos >= n {
		return 99999999
	}
	// ゴールしていたらこれ以上コストは掛からないので0
	if pos == n-1 {
		return 0
	}
	// すでにdfsの結果を計算済みであればそれを返す
	if dp[pos] != -1 {
		return dp[pos]
	}
	// 1つ進む場合と2つ進む場合を比較して小さい方を採用
	step1 := dfs(pos+1, n, h, dp) + int(math.Abs(float64(h[pos+1]-h[pos])))
	step2 := dfs(pos+2, n, h, dp) + int(math.Abs(float64(h[pos+2]-h[pos])))
	// 答えをメモしておく
	dp[pos] = int(math.Min(float64(step1), float64(step2)))
	return dp[pos]
}
