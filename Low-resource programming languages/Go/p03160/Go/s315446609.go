package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func readInt64() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

const INF = int(1e4) + 1

func main() {
	sc.Split(bufio.ScanWords)
	n := readInt()
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = readInt()
	}

	dp := make([]int, n)
	dp[0] = 0
	dp[1] = abs(h[0] - h[1])

	for i := 2; i < n; i++ {
		dp[i] = min(dp[i-2]+abs(h[i]-h[i-2]), dp[i-1]+abs(h[i]-h[i-1]))
	}
	fmt.Println(dp[n-1])
}

func min(a int, b int) int {
	if a < b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -1 * a
	}
	return a
}
