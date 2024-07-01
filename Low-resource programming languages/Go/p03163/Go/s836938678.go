package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var dp [101][100010]int

func main() {
	scanInit()

	n := nextInt()
	k := nextInt()
	w := make([]int, n)
	v := make([]int, n)
	for i := 0; i < n; i++ {
		w[i] = nextInt()
		v[i] = nextInt()
	}

	for i := 0; i < n; i++ {
		for j := 0; j <= k; j++ {
			if j >= w[i] {
				dp[i+1][j] = max(dp[i][j-w[i]]+v[i], dp[i][j])
			} else {
				dp[i+1][j] = dp[i][j]
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
