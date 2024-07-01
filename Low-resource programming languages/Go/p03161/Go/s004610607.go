package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

const inf int = 1050000000

func main() {
	scanInit()

	n := nextInt()
	k := nextInt()
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = nextInt()
	}

	dp := make([]int, n)
	dp[0] = 0
	for i := 1; i < n; i++ {
		mincost := inf
		for j := max(i-k, 0); j < i; j++ {
			nowcost := dp[j] + abs(h[i]-h[j])
			mincost = min(mincost, nowcost)
		}
		dp[i] = mincost
	}

	fmt.Println(dp[n-1])

}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
