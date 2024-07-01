package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func next() string {
	scanner.Scan()
	return scanner.Text()
}

func nextInt() int {
	num, _ := strconv.Atoi(next())
	return num
}

func nextInts(n int) [][]int {
	ints := make([][]int, n)
	for i := range ints {
		ints[i] = make([]int, 2)
	}
	for i := 0; i < n; i++ {
		ints[i][0], ints[i][1] = nextInt(), nextInt()
	}
	return ints
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {

	scanner.Split(bufio.ScanWords)
	n, w := nextInt(), nextInt()
	a := nextInts(n)

	dp := make([]int, w+1)

	for i := 1; i <= n; i++ {
		for j := 1; j <= w; j++ {
			weight := a[i-1][0]
			value := a[i-1][1]
			dontChoose := dp[j]
			choose := 0
			if j-weight >= 0 {
				choose = value + dp[j-weight]
			}
			dp[i] = max(dontChoose, choose)
		}
	}

	fmt.Println(dp[w])
}
