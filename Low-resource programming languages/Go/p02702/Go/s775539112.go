package main

import (
	"fmt"
	"math"
	"strconv"
)

func rec(s string, n int) int {
	num, _ := strconv.Atoi(string(s[n]))
	if n == 0 {
		return num
	}
	return 10*rec(s, n-1) + num
}

func main() {
	var s string
	var num, cnt int
	fmt.Scan(&s)
	dp := make([]int, len(s))
	for i := 0; i < len(s); i++ {
		dp[i] = rec(s, i)
	}
	for i := 0; i < len(s)-3; i++ {
		for j := i + 3; j < len(s); j++ {
			if i == 0 {
				num = dp[j]
			} else {
				num = dp[j] - dp[i-1]*int(math.Pow10(j-i+1))
			}
			if num%2019 == 0 {
				cnt++
			}
		}
	}
	fmt.Println(cnt)
}
