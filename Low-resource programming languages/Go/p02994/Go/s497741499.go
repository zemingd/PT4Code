package main

import (
	"fmt"
	"math"
)

func main() {
	var n, l, sum int
	fmt.Scan(&n, &l)
	for i := 0; i < n; i++ {
		sum += i + l
	}

	closeSum := sum
	absSum := math.Abs(float64(sum))
	curDiff := absSum
	for i := 0; i < n; i++ {
		diff := math.Abs(absSum - math.Abs(float64(sum-l-i)))
		if diff < curDiff {
			closeSum = sum - l - i
			curDiff = diff
		}
	}
	fmt.Println(closeSum)
}
