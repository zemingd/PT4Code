package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	var ans float64
	for i := 0; i < n; i++ {
		var ni int
		fmt.Scan(&ni)
		ans += 1.0 / float64(ni)
	}
	fmt.Println(1.0 / ans)
}
