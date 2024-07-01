package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, n float64
	fmt.Scan(&a, &b, &n)
	max := floorFunc(a, b, n)
	for i := n - 1; i > 0; i-- {
		ret := floorFunc(a, b, float64(i))
		if max < ret {
			max = ret
		}
	}

	fmt.Println(max)
}

func floorFunc(a float64, b float64, x float64) int64 {
	return int64(math.Floor((a*x)/b) - (a * math.Floor(x/b)))
}
