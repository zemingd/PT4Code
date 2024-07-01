package main

import (
	"fmt"
	"math"
)

func main() {
	var k, x int
	fmt.Scan(&k, &x)

	min := math.Max(float64(x-k+1), -1000000)
	max := math.Min(float64(x+k-1), 1000000)

	for i := min; i <= max; i++ {
		if i == max {
			fmt.Println(i)
			break
		}
		fmt.Print(i, " ")
	}
}
