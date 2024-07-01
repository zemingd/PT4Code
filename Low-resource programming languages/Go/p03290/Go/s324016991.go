package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc, wr = bufio.NewScanner(os.Stdin), bufio.NewWriter(os.Stdout)

func scanString() string   { sc.Scan(); return sc.Text() }
func scanRunes() []rune    { return []rune(scanString()) }
func scanInt() int         { a, _ := strconv.Atoi(scanString()); return a }
func scanInt64() int64     { a, _ := strconv.ParseInt(scanString(), 10, 64); return a }
func scanFloat64() float64 { a, _ := strconv.ParseFloat(scanString(), 64); return a }

func scanInts(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = scanInt()
	} 
	return res
}

func debug(a ...interface{}) { fmt.Fprintln(os.Stderr, a...) }

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
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

//•*¨*•.¸¸♪Main•*¨*•.¸¸♪(　-ω-)ノ　(　・ω・)

func main() {
	defer wr.Flush()
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 10000), 1001001)

	d := scanInt()
	g := scanInt()

	dp := make([][]int, d+1)
	dp[0] = make([]int, d*100+1)
	for i := 0; i < d*100+1; i++ {
		dp[0][i] = -1
	}
	dp[0][0] = 0

	for i := 0; i < d; i++ {
		p := scanInt()
		c := scanInt()
		dp[i+1] = make([]int, d*100+1)
		for j := 0; j < d*100+1; j++ {
			dp[i+1][j] = -1
		}
		dp[i+1][0] = 0

		for j := 0; j < d*100+1; j++ {
			if dp[i][j] == -1 {
				break
			}
			for k := 1; k < p; k++ {
				dp[i+1][j+k] = max(dp[i+1][j+k], max(dp[i][j+k], dp[i][j]+(i+1)*100*k))
			}
			dp[i+1][j+p] = max(dp[i+1][j+p], max(dp[i][j+p], dp[i][j]+(i+1)*100*p+c))
		}
	}

	for i := 0; i < d*100+1; i++ {
		if dp[d][i] >= g {
			fmt.Fprintln(wr, i)
			return
		}
	}

}
