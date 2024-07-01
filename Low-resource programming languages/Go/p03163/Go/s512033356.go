package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

var ans int

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	w, _ := strconv.Atoi(stringLineScan())
	wv := make([][]int, n)
	for i := 0; i < n; i++ {
		t := make([]int, 2)
		t[0], _ = strconv.Atoi(stringLineScan())
		t[1], _ = strconv.Atoi(stringLineScan())
		wv[i] = t
	}
	dp := make([][]int, n+1)
	for i := 0; i <= n; i++ {
		t := make([]int, w+1)
		dp[i] = t
	}
	mv := 0
	for i := 1; i <= n; i++ {
		for j := 1; j <= w; j++ {
			weight, value := wv[i-1][0], wv[i-1][1]
			if j-weight >= 0 {
				v := dp[i-1][j-weight] + value
				if v >= dp[i-1][j] {
					dp[i][j] = v
					if v > mv {
						mv = v
					}
				} else {
					dp[i][j] = dp[i-1][j]
				}
			} else {
				dp[i][j] = dp[i-1][j]
			}
		}
	}
	fmt.Println(mv)
}