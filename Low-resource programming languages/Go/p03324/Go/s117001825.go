package main

import (
	"fmt"
	"math"
)

func main() {
	var D, N int
	fmt.Scan(&D, &N)
	if N <= 99 {
		fmt.Println(math.Pow(100, float64(D)) * float64(N))
	} else {
		fmt.Println(math.Pow(100, float64(D)) * float64(101))
	}
}