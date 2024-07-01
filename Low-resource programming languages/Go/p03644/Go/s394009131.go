package main

import (
	"fmt"
	"math"
)

// バイナリである

func main() {
	var n int
	fmt.Scan(&n)
	ans := 0.0
	switch {
	case n < 2:
		ans = 0.0
	case n < 4:
		ans = 1.0
	case n < 8:
		ans = 2.0
	case n < 16:
		ans = 3.0
	case n < 32:
		ans = 4.0
	case n < 64:
		ans = 5.0
	default:
		ans = 6.0
	}
	fmt.Println(int(math.Pow(2.0, ans)))
}
