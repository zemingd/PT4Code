package main

import (
	"fmt"
	"math"
)

func main() {
	var x int
	fmt.Scan(&x)

	ans := 1
	for i := 2; i*i <= x; i++ {
		for j := 2; ; j++ {
			e := int(math.Pow(float64(i), float64(j)))
			if e <= x {
				ans = max(ans, e)
			} else {
				break
			}
		}
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
