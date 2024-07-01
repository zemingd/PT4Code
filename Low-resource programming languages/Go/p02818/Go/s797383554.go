package main

import (
	"fmt",
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
	fmt.Println(math.max(a-k, 0), math.max(b-math.max(k-a, 0), 0))
	return
}
