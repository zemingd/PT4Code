package main

import (
	"fmt"
)

func main() {
	var a, b, x int64

	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&x)

	var ans = divisions(b, x) - divisions(a-1, x)

	fmt.Println(ans)

}

func divisions(max, x int64) int64 {
	if max < 0 {
		return 0
	}
	return max/x + 1

}
