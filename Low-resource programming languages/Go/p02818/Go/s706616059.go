package main

import (
	"fmt"
)

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)

	resultA := a
	resultB := b

	if a < k {
		k = k - a
		resultA = 0
		resultB = b - k
	} else if a > k {
		resultA = a - k
		k = 0
	}

	fmt.Println(resultA, resultB)
}
