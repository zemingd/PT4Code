package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 1000000)

	s := getString()
	t := getString()
	x := s + s

	for len(x) < len(t)*len(t) {
		x = x + s
	}

	N := len(x)
	M := len(t)

	dp := make([][]int, N+1)
	for i := 0; i <= N; i++ {
		dp[i] = make([]int, M+1)
	}

	for i := 0; i < N; i++ {
		for j := 0; j < M; j++ {
			if x[i] == t[j] {
				dp[i+1][j+1] = max(dp[i][j]+1, max(dp[i+1][j], dp[i][j+1]))
			} else {
				dp[i+1][j+1] = max(dp[i+1][j], dp[i][j+1])
			}
			if dp[i+1][j+1] == M {
				out(i + 1)
				return
			}
		}
	}

	out(-1)
}
