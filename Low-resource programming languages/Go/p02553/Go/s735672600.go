package main

import (
	"fmt"
)

func max(x, y int64) int64 {
	if x > y {
		return x
	}
	return y
}

func main() {
	var a, b, c, d int64
	fmt.Scan(&a, &b, &c, &d)
	ans := int64(-1000 * 1000 * 1000 * 1000 * 1000 * 1000)

	ans = max(ans, a*c)
	ans = max(ans, a*d)
	ans = max(ans, b*c)
	ans = max(ans, b*d)
	fmt.Println(ans)
}
