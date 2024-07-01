package main

import (
	"bufio"
	"fmt"
	"os"
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

func solve(s string) int {
	n := len(s)
	if n == 1 {
		return 1
	}

	dp := make([]int, n+1)
	dp[1] = 1
	if s[0] == s[1] {
		dp[2] = 1
	} else {
		dp[2] = 2
	}
	if n == 2 {
		return dp[n]
	}

	for i := 3; i <= n; i++ {
		if s[i-1] == s[i-2] {
			dp[i] = dp[i-3] + 2
		} else {
			dp[i] = dp[i-1] + 1
		}
	}

	return dp[n]
}

func main() {
	s := input()
	fmt.Println(solve(s))
}
