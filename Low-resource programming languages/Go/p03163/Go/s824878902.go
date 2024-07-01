package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

//var dp [103][100010]int

func main() {
	scanInit()

	n := nextInt()
	k := nextInt()
	w := make([]int, n+2)
	v := make([]int, n+2)
	for i := 0; i < n; i++ {
		w[i] = nextInt()
		v[i] = nextInt()
	}

	dp := makemat(n+2, k+2) // 余裕+2

	for i := 1; i <= n+1; i++ {
		for j := 0; j <= k; j++ {
			if j >= w[i-1] {
				take := dp[i-1][j-w[i-1]] + v[i-1]
				notake := dp[i-1][j]
				dp[i][j] = max(take, notake)
			} else {
				dp[i][j] = dp[i-1][j]
			}
		}
	}

	fmt.Println(dp[n][k])
	//fmt.Println(dp)
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
func makemat(a, b int) [][]int {
	dp := make([][]int, a)
	for i := 0; i < a; i++ {
		dp[i] = make([]int, b)
		for j := 0; j < b; j++ {
			dp[i][j] = 0
		}
	}
	return dp
}

// ---- readfunc
func scanInit() {
	const cap = 200 * 1024 // Default=64
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}
