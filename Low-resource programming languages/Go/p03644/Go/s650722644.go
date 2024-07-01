package main

import (
	"fmt"
	"math"
)

type BreakCount map[int]int

func main() {
	var N int
	fmt.Scan(&N)

	result := 0
	count := 0
	for {
		if  float64(N) < math.Pow(2.0,float64(count)) {
			result = int(math.Pow(2.0,float64(count - 1)))
			break
		}
		count++
	}
	fmt.Println(result)
}
