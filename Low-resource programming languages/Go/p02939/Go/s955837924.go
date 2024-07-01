package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	scanInit()

	s := nextStr()
	n := len(s)
	if n == 1 {
		fmt.Println(1)
		return
	}

	dp := make([][2]int, n+1)
	// dp[i][j]  i文字目で最大値
	// j=0 直前は1文字
	// j=1 直前は2文字
	dp[1][0] = 1
	if s[0] == s[1] {
		dp[2][0] = 1
	} else {
		dp[2][0] = 2
	}
	for i := 3; i < n+1; i++ {
		if s[i-1] != s[i-2] {
			dp[i][0] = dp[i-1][0] + 1
		}

		dp[i][0] = max(dp[i][0], dp[i-1][1]+1)
		dp[i][1] = max(dp[i][1], dp[i-2][0]+1)
	}

	//	fmt.Println(dp)
	fmt.Println(max(dp[n][0], dp[n][1]))
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
	//	sc.Split(bufio.ScanWords)
	sc.Split(bufio.ScanLines)
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
