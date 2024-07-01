package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const inf = 1 << 60

func main() {
	n := getInt()
	hs := getIntSlice(n)

	dp := make([]int, n)
	for i := range dp {
		dp[i] = inf
	}
	dp[0] = 0

	for i := 1; i < n; i++ {
		dp[i] = min(dp[i], dp[i-1]+abs(hs[i]-hs[i-1]))
		if i > 1 {
			dp[i] = min(dp[i], dp[i-2]+abs(hs[i]-hs[i-2]))
		}
	}

	fmt.Println(dp[n-1])
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func min(ns ...int) int {
	min := ns[0]
	for i := 1; i < len(ns); i++ {
		if min > ns[i] {
			min = ns[i]
		}
	}
	return min
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
