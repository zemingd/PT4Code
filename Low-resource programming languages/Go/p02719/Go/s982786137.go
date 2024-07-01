package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k float64
	fmt.Scan(&n, &k)

	for n > math.Abs(n-k) {
		n = math.Abs(n - k)
	}
	fmt.Println(int(n))
}
