package main

import (
	"fmt"
	"math"
)

func main() {
	var d, n int
	fmt.Scan(&d, &n)
	if d == 0 {
		fmt.Println(n)
		return
	}
	fmt.Println(int(math.Pow(float64(100), float64(d))) * n)
}
