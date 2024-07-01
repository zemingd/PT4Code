package main

import (
	"fmt"
	"math"
)

func main() {
	var n, m, nn int

	fmt.Scan(&n, &m)
	for i := 0; i < 10; i++ {
		nn = n - m
		nn = int(math.Abs(float64(nn)))
		if n < nn {
			fmt.Println(int64(n))
			break
		}
		n = nn
	}
}
