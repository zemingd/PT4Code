package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n, k int
	sc.nextInts(&n, &k)
	var R, S, P int
	sc.nextInts(&R, &S, &P)
	t := []byte(sc.nextStr())
	// dp[i][j] iまで見たとき、j(0:r,1:s,2:p)出したときのスコア
	dp := make([][]int, n)
	for i := range dp {
		dp[i] = make([]int, 3)
	}
	var ans int
	for i := 0; i < k; i++ {
		for j := i; j < n; j += k {
			if i == j {
				switch t[j] {
				case 'r':
					dp[j][2] = P
				case 's':
					dp[j][0] = R
				case 'p':
					dp[j][1] = S
				}
			} else {
				dp[j][0] = max(dp[j-k][1], dp[j-k][2])
				dp[j][1] = max(dp[j-k][0], dp[j-k][2])
				dp[j][2] = max(dp[j-k][0], dp[j-k][1])
				switch t[j] {
				case 'r':
					dp[j][2] += P
				case 's':
					dp[j][0] += R
				case 'p':
					dp[j][1] += S
				}
			}
		}
		idx := i + (n-1-i)/k*k
		score := max(max(dp[idx][0], dp[idx][1]), dp[idx][2])
		ans += score
	}
	fmt.Println(ans)
}

type scanner struct {
	sc *bufio.Scanner
}

var sc *scanner

func init() {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	sc = &scanner{sc: s}
}

func (s *scanner) nextInts(ints ...*int) {
	for i := range ints {
		s.sc.Scan()
		*ints[i], _ = strconv.Atoi(s.sc.Text())
	}
}

func (s *scanner) nextStr() string {
	s.sc.Scan()
	return s.sc.Text()
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
