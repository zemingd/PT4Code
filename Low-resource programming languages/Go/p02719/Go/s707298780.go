package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	fmt.Println(math.Min(float64(n%k), float64(k-n%k)))

}
