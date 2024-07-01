package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var x, y int
	fmt.Fscan(r, &x)
	fmt.Fscan(r, &y)

	mod := 1000000007

	dp := make([][]int, 3)
	for i := 0; i < 3; i++ {
		dp[i] = make([]int, y+1)
	}
	dp[0][0] = 1
	dp[1][2] = 1

	for i := 2; i < x+1; i++ {
		for j := 0; j < y+1; j++ {
			// (i+1,j+2)
			if j-2 >= 0 {
				dp[2][j] += dp[1][j-2]
				dp[2][j] %= mod
			}
			// (i+2,j+1)
			if j-1 >= 0 {
				dp[2][j] += dp[0][j-1]
				dp[2][j] %= mod
			}
		}

		dp[0] = dp[1]
		dp[1] = dp[2]
		dp[2] = make([]int, y+1)
	}
	fmt.Println(dp[0])
	fmt.Println(dp[1])
	fmt.Println(dp[2])

	fmt.Println(dp[1][y])
}

// Utility

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func primeFactor(x int) map[int]int {
	res := make(map[int]int)
	for i := 2; i*i <= x; i++ {
		for x%i == 0 {
			res[i]++
			x = x / i
		}
	}
	if x != 1 {
		res[x] = 1
	}
	return res
}

func divisor(x int) []int {
	res := make([]int, 0)
	for i := 1; i*i <= x; i++ {
		if x%i == 0 {
			res = append(res, i)
			if i != x/i {
				res = append(res, x/i)
			}
		}
	}
	return res
}

func gcd(x, y int) int {
	if y == 0 {
		return x
	}
	return gcd(y, x%y)
}

func lcm(x, y int) int {
	return x / gcd(x, y) * y
}
