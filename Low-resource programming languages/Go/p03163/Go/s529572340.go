package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	n := getInt()
	W := getInt()

	ws := make([]int, n)
	vs := make([]int, n)
	for i := 0; i < n; i++ {
		ws[i] = getInt()
		vs[i] = getInt()
	}

	dp := make([][]int, n+1)
	for i := range dp {
		dp[i] = make([]int, W+1)
	}

	for i := 1; i < n+1; i++ {
		for j := range dp[i-1] {
          	dp[i][j] = dp[i-1][j]
			if j-ws[i-1] >= 0 {
				dp[i][j] = max(dp[i][j], dp[i-1][j-ws[i-1]]+vs[i-1])
			}
		}
	}

	fmt.Println(dp[n][W])
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// -----------------------------------------

var scanner = wordScanner()

func wordScanner() *bufio.Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	return sc
}

func getInt() int {
	scanner.Scan()
	i, err := strconv.Atoi(scanner.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func getIntSlice(n int) []int {
	is := make([]int, n)
	for i := range is {
		is[i] = getInt()
	}
	return is
}

func getString() string {
	scanner.Scan()
	s := scanner.Text()
	return s
}
