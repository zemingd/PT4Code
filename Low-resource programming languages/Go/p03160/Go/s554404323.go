package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func smaller(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	sc.Split(bufio.ScanWords)
	n := ri()
	h := make([]int, n)
	for i := 0; i < n; i++ {
		h[i] = ri()
	}
	dp := make([]int, len(h))
	dp[0] = 0
	dp[1] = abs(h[1] - h[0])
	for i := 2; i < len(h); i++ {
		dp[i] = smaller(abs(h[i]-h[i-1])+dp[i-1], abs(h[i]-h[i-2])+dp[i-2])
	}
	fmt.Println(dp[len(dp)-1])
}
