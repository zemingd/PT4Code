package main

import "fmt"

//Library for input and output
// "strconv" //For conversion of strings to ints and vice versa
//i, err := strconv.Atoi("-42")
//s := strconv.Itoa(-42)
// "sort"

func main() {
	var N, W int
	fmt.Scan(&N, &W)
	w := make([]int, N+1)
	v := make([]int, N+1)

	for i := 1; i <= N; i++ {
		fmt.Scan(&w[i], &v[i])
	}

	dp := make([][]int, N+1)
	for i := 0; i <= N; i++ {
		dp[i] = make([]int, W+1)
	}

	for i := 1; i <= N; i++ {
		for j := 0; j <= W; j++ {
			dp[i][j] = dp[i-1][j]
			if j >= w[i] {
				dp[i][j] = Max(dp[i-1][j], v[i]+dp[i-1][j-w[i]])
			}
		}
	}
	fmt.Println(dp[N][W])
}

// Reverse a string s
func Reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[j] = runes[j], runes[i]
	}
	return string(runes)
}

// Abs returns the absolute value of x.
func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

// Min returns the min of x and y
func Min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}

// Max returns the min of x and y
func Max(x int, y int) int {
	if x < y {
		return y
	}
	return x
}
