package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	n, _ := strconv.Atoi(input())
	wLimit, _ := strconv.Atoi(input())
	w := make([]int, n+1)
	v := make([]int, n+1)
	for i := 1; i <= n; i++ {
		w[i], _ = strconv.Atoi(input())
		v[i], _ = strconv.Atoi(input())
	}

	dp := make([][]int, n+1)
	for i := 0; i <= n; i++ {
		dp[i] = make([]int, wLimit+1)
	}

	for i := 1; i <= n; i++ {
		for j := 1; j <= wLimit; j++ {
			if j < w[i] {
				dp[i][j] = dp[i-1][j]
			} else {
				dp[i][j] = max(dp[i-1][j], dp[i-1][j-w[i]]+v[i])
			}
		}
	}

	fmt.Println(dp[n][wLimit])
}
