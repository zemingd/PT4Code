package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
)

const (
	initialBufSize = 100000
	maxBufSize     = 1000000
)

var sc *bufio.Scanner

func initScanner(r io.Reader) *bufio.Scanner {
	buf := make([]byte, initialBufSize)

	sc := bufio.NewScanner(r)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords) // bufio.ScanLines
	return sc
}

func main() {
	sc = initScanner(os.Stdin)
	fmt.Println(resolve(parseProblem()))
}

func parseProblem() string {
	return scanString(sc)
}

func resolve(s string) int {
	dp := make([]map[string]int, len(s)+1)
	dp[0] = map[string]int{"": 0}
	for i := 1; i <= len(s); i++ {
		dp[i] = map[string]int{}
		for _, j := range []int{1, 2} {
			if i-j < 0 {
				continue
			}
			cur := s[i-j : i]
			for s, v := range dp[i-j] {
				if cur == s {
					continue
				}
				if dp[i][cur] < v+1 {
					dp[i][cur] = v + 1
				}
			}
		}
	}
	max := 0
	for _, v := range dp[len(s)] {
		if max < v {
			max = v
		}
	}
	return max
}

// snip-scan-funcs
func scanString(sc *bufio.Scanner) string {
	sc.Scan()
	return sc.Text()
}
