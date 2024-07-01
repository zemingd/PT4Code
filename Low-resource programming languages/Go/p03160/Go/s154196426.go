package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func chmin(a *float64, b float64) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

var sc = bufio.NewScanner(os.Stdin)

func newLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	var n int
	n, _ = strconv.Atoi(newLine())
	h := make([]float64, n)
	inputLine := strings.Split(newLine(), " ")
	for i, v := range inputLine {
		h[i], _ = strconv.ParseFloat(v, 64)
	}
	dp := make([]float64, n)
	for i := 0; i < n; i++ {
		dp[i] = math.Inf(1)
	}
	dp[0] = 0

	for i := 0; i+1 < n; i++ {
		chmin(&dp[i+1], dp[i]+math.Abs(h[i]-h[i+1]))
		if i+2 < n {
			chmin(&dp[i+2], dp[i]+math.Abs(h[i]-h[i+2]))
		}
	}
	fmt.Println(dp[n-1])
}
