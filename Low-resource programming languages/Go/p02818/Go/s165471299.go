package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, k int64
	fmt.Scan(&a, &b, &k)
	// if k < a {
	// 	fmt.Println(a-k, b)
	// 	return
	// }
	// if a+b < k {
	// 	fmt.Println(0, 0)
	// 	return
	// }
	fmt.Println(math.Max(float64(a-k), 0), math.Max(float64(float64(b)-math.Max(float64(k-a), 0)), 0))
	return
}
