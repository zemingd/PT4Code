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

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	n, _ := strconv.Atoi(input())
	h := make([]int, n+1)
	for i := 1; i <= n; i++ {
		h[i], _ = strconv.Atoi(input())
	}

	dp := make([]int, n+1)
	dp[1] = 0
	dp[2] = abs(h[2] - h[1])
	for i := 3; i <= n; i++ {
		dp[i] = min(dp[i-1]+abs(h[i]-h[i-1]), dp[i-2]+abs(h[i]-h[i-2]))
	}
	fmt.Println(dp[n])
}
