package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	r := bufio.NewReader(os.Stdin)
	var n int
	var k int
	fmt.Fscan(r, &n)
	fmt.Fscan(r, &k)
	a := make([]int, n)
	b := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Fscan(r, &a[i])
		fmt.Fscan(r, &b[i])
	}

	ans := 0
	for i := 0; i < n; i++ {
		if b[i] >= k {
			ans = a[i]
			break
		}
		k -= b[i]
	}

	fmt.Println(ans)
}

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
