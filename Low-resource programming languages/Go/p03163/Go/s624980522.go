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

func main() {
	sc.Split(bufio.ScanWords)
	n, W := readInt(), readInt()

	weight, value := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		weight[i] = readInt()
		value[i] = readInt()
	}

	dp := make([][]int, n+1)
	for i := 0; i <= n; i++ {
		dp[i] = make([]int, W+1)
	}

	for i := 0; i < n; i++ {
		for w := 0; w <= W; w++ {
			if w-weight[i] >= 0 {
				dp[i+1][w] = max(dp[i][w-weight[i]]+value[i], dp[i][w])
			} else {
				dp[i+1][w] = dp[i][w]
			}
		}
	}
	fmt.Println(dp[n][W])
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
