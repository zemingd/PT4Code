package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	var N int
	var h [100000]int
	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		sc.Scan()
		h[i], _ = strconv.Atoi(sc.Text())
	}
	var dp [100000]int
	dp[1] = abs(h[0] - h[1])
	for i := 2; i < N; i++ {
		dp[i] = min(dp[i-1]+abs(h[i]-h[i-1]), dp[i-2]+abs(h[i]-h[i-2]))
	}
	fmt.Println(dp[N-1])
}
