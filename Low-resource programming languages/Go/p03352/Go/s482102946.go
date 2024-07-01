package main

import (
	"fmt"
	"math"
)

func main() {
	var x float64
	fmt.Scan(&x)
	for i := x; i >= 1; i-- {
		if isPow(i) {
			fmt.Println(i)
			break
		}
	}
}

func isPow(n float64) bool {
	if n == 1 {
		return true
	}
	for i := float64(2); i <= n/2; i++ {
		for j := float64(2); math.Pow(i, j) <= n; j++ {
			if math.Pow(i, j) == n {
				return true
			}
		}
	}
	return false
}
