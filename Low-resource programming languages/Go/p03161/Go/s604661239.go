package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

var slice []int
var dp []float64

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n, k := nextInt(), nextInt()
	slice = make([]int, n+k)
	for i := 0; i < n; i++ {
		slice[i] = nextInt()
	}

	dp = make([]float64, 1000000)
	for i := 0; i < len(dp); i++ {
		dp[i] = math.Inf(1)
	}

	dp[0] = 0.0
	// for i := 0; i < n; i++ {
	// 	for j := 1; j <= k; j++ {
	// 		chmin(&dp[i+j], dp[i]+float64(abs(slice[i]-slice[i+j])))
	// 	}
	// }
	for i := 1; i < n; i++ {
		for j := 1; j <= k; j++ {
			if i-j >= 0 {
				chmin(&dp[i], dp[i-j]+float64(abs(slice[i]-slice[i-j])))
			}
			// if i > 1 {
			// 	chmin(&dp[i], dp[i-j]+float64(abs(slice[i]-slice[i-j])))
			// }

		}
	}

	// fmt.Println(slice)
	// fmt.Println(dp[:n])
	fmt.Println(int(dp[n-1]))

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
