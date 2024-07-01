package main

import (
	"fmt"
	"math"
)

func isInt(x float64) bool {
	return float64(int(x)) == x
}

func digits(x int) int {
	switch {
	case x < 10:
		return 1
	case x < 100:
		return 2
	case x < 1000:
		return 3
	case x < 10000:
		return 4
	case x < 100000:
		return 5
	case x < 1000000:
		return 6
	case x < 10000000:
		return 7
	case x < 100000000:
		return 8
	case x < 1000000000:
		return 9
	case x < 10000000000:
		return 10
	default:
		return 999
	}
}

func max(a, b float64) float64 {
	if a > b {
		return a
	}
	return b
}

func main() {
	var n float64
	fmt.Scan(&n)

	var b float64
	ans := 9999
	for a := 1.0; a <= math.Sqrt(n); a++ {
		b = n / a
		if !(isInt(b)) {
			continue
		}
		if x := digits(int(max(a, b))); x < ans {
			ans = x
		}
	}
	fmt.Println(ans)
}
