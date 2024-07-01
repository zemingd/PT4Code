package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var slice []int
var dp []float64

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	slice = make([]int, n+2)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}

	dp = make([]float64, 100000000)
	for i := 0; i < len(dp); i++ {
		dp[i] = math.Inf(1)
	}

	dp[0] = 0.0
	for i := 1; i < n; i++ {
		chmin(&dp[i], dp[i-1]+float64(abs(slice[i]-slice[i-1])))
		if i > 1 {
			chmin(&dp[i], dp[i-2]+float64(abs(slice[i]-slice[i-2])))
		}
	}

	fmt.Println(dp[n-1])

}

func abs(a int) int {
	if a < 0 {
		return -1 * a
	}

	return a
}

func chmin(a *float64, b float64) bool {
	if *a > b {
		*a = b
		return true
	}
	return false
}

func chmax(a *float64, b float64) bool {
	if *a < b {
		*a = b
		return true
	}
	return false
}
