package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	waters := getIntSlice(2)
	waters[0], waters[1] = waters[0]*100, waters[1]*100
	sugars := getIntSlice(2)
	e, f := getInt(), getInt()

	// dp[砂糖水] = 砂糖
	dp := make([]int, f+1)
	for i := range dp {
		dp[i] = -1
	}
	dp[0] = 0

	for i := range dp {
		if dp[i] == -1 {
			continue
		}
		for j := range waters {
			if i+waters[j] <= f {
				dp[i+waters[j]] = max(dp[i+waters[j]], dp[i])
			}
		}

		for j := range sugars {
			if w := (i - dp[i]) / 100; (dp[i]+sugars[j] <= e*w) && (i+sugars[j] <= f) {
				dp[i+sugars[j]] = max(dp[i+sugars[j]], dp[i]+sugars[j])
			}
		}
	}

	sugarWater, sugar := waters[0], 0
	for i := 1; i <= f; i++ {
		nowSW := i
		nowSgr := dp[i]
		nowWtr := nowSW - nowSgr

		if (nowWtr == 0) || (nowSgr == -1) {
			continue
		}

		if nowSgr*sugarWater > sugar*nowSW {
			sugarWater = nowSW
			sugar = nowSgr
		}
	}

	fmt.Println(sugarWater, sugar)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

// -----------------------------------------

var sc = bufio.NewScanner(os.Stdin)

func init() {
	// buf := 200001
	// sc.Buffer(make([]byte, buf), buf)
	sc.Split(bufio.ScanWords)
}

func getInt() int {
	i, err := strconv.Atoi(getString())
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
	sc.Scan()
	s := sc.Text()
	return s
}
