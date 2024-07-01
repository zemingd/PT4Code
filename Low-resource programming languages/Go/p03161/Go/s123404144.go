package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt64() int64 {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return int64(i)
}

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

const INF = math.MaxInt64

func main() {
	sc.Split(bufio.ScanWords)
	n, k := readInt(), readInt()

	h := make([]int64, n)
	for i := 0; i < n; i++ {
		h[i] = readInt64()
	}

	dp := make([]int64, n)
	for i := 0; i < n; i++ {
		dp[i] = INF
	}
	dp[0] = 0
	dp[1] = abs(int64(h[0] - h[1]))

	for i := 0; i < n; i++ {
		for j := 1; j <= k; j++ {
			if i-j < 0 {
				continue
			}
			dp[i] = min(dp[i], dp[i-j]+abs(h[i]-h[i-j]))
		}
	}
	fmt.Println(dp[n-1])
}

func abs(a int64) int64 {
	if a < 0 {
		return a * -1
	}
	return a
}

func min(a, b int64) int64 {
	if a > b {
		return b
	}
	return a
}
