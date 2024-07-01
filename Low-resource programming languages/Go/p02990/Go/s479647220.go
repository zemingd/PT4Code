package main

import (
	"fmt"
)

var mod = 1000000007

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	rNum := n - k
	for i := 1; i <= k; i++ {
		fmt.Println(combCount(k-1, i-1) * combCount(rNum+1, i) % mod)
	}
}

func combCount(left int, right int) int {
	rightFac := factorial(right, right)
	if rightFac <= 0 {
		return 0
	}
	return factorial(left, right) / rightFac
}

func factorial(n int, times int) (res int) {
	facts := make([]int, n+1)
	if facts[n] != 0 {
		res = facts[n]
		return res
	}

	if n > 0 && times > 0 {
		res = n * factorial(n-1, times-1)
		return res
	}

	return 1
}
