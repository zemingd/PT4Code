package main

import (
	"fmt"
	"math/big"
)

func main() {
	var k int64
	fmt.Scan(&k)

	var cnt int
	a := big.NewInt(0)
	for i := 1; ; i *= 10 {
		a = a.Add(a, big.NewInt(int64(7*i)))
		cnt++
		if a.Div(a, big.NewInt(k)) == big.NewInt(0) {
			fmt.Println(cnt)
			return
		}
		if 100000000 < cnt {
			fmt.Println(-1)
			return
		}
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}
