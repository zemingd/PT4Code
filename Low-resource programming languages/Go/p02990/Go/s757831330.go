package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

const mod int = 1e9 + 7

var memo [][]int

func main() {
	nextReader = newScanner()
	n, k := nextInt(), nextInt()

	initComb(n)
	for i := 1; i <= k; i++ {
		fmt.Println(comb(n-k+1, i) * comb(k-1, i-1) % mod)
	}
}

func initComb(n int) {
	memo = make([][]int, n+1)
	for i := range memo {
		memo[i] = make([]int, n+1)
		memo[i][0] = 1
	}
	for i := 1; i < n+1; i++ {
		for j := 1; j <= i; j++ {
			memo[i][j] = memo[i-1][j-1] + memo[i-1][j]
		}
	}
}

func comb(x, y int) int {
	if x < y {
		return 0
	}
	return memo[x][y]
}

// ---------------------------------------------------------------
// I/O
// ---------------------------------------------------------------
var nextReader func() string

func newScanner() func() string {
	sc := bufio.NewScanner(os.Stdin)
	sc.Buffer(make([]byte, 1024), int(1e11))
	sc.Split(bufio.ScanWords)
	return func() string {
		sc.Scan()
		return sc.Text()
	}
}

func nextInt() int { n, _ := strconv.Atoi(nextReader()); return n }