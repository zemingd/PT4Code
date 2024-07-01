package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

const mod = 1000000007

func contains(arr []int, el int) bool {
	for _, v := range arr {
		if el == v {
			return true
		}
	}
	return false
}

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	nm := strings.Split(sc.Text(), " ")
	n, _ := strconv.Atoi(nm[0])
	m, _ := strconv.Atoi(nm[1])
	bads := make([]int, m)
	for i := 0; i < m; i++ {
		sc.Scan()
		bad, _ := strconv.Atoi(sc.Text())
		bads[i] = bad
	}

	dp := make([]int, n+1)
	dp[0] = 1
	if !contains(bads, 1) {
		dp[1] = 1
	}
	for i := 2; i <= n; i++ {
		if !contains(bads, i-1) {
			dp[i] += dp[i-1]
		}
		if !contains(bads, i-2) {
			dp[i] += dp[i-2]
		}
		dp[i] %= mod
	}
	fmt.Println(dp[len(dp)-1])
}
