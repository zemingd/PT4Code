package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}
func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	h := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		sc.Scan()
		h[i], _ = strconv.Atoi(sc.Text())
	}
	dp := make([]int, n+1)
	for i := range dp {
		dp[i] = math.MaxInt32
	}
	dp[0] = 0
	for i := 1; i < n; i++ {
		for j := 1; j <= min(k, i); j++ {
			dp[i] = min(dp[i], dp[i-j]+abs(h[i]-h[i-j]))
		}
	}
	fmt.Println(dp[n-1])
}
