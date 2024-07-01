package main

import (
	"fmt"
	"math"
)

func min(n ...int) int {
	ans := n[0]
	for _, v := range n {
		if v < ans {
			ans = v
		}
	}
	return ans
}

func main() {
	var n, a, b, c, d, e int
	fmt.Scan(&n, &a, &b, &c, &d, &e)

	m := min(a, b, c, d, e)
	fmt.Println(int(math.Ceil(float64(n)/float64(m))) + 4)
}
