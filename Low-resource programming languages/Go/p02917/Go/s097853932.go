package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	bs := make([]int, n-1)
	r := 0
	for i := range bs {
		fmt.Scan(&bs[i])
	}
	if n == 2 {
		fmt.Println(bs[0] * 2)
	} else {
		r += bs[0]
		r += bs[n-2]
		for i := 1; i < n-1; i++ {
			r += min01(bs[i-1], bs[i])
		}
		fmt.Println(r)
	}
}

func min01(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
