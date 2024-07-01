package main

import (
	"fmt"
	"math"
)

func main() {
	var n float64
	fmt.Scan(&n)
	li := make([]float64, 5)
	min := 1000000000000001.0
	for i := 0; i < 5; i++ {
		fmt.Scan(&li[i])
		if min > li[i] {
			min = li[i]
		}
	}
	if min >= n {
		fmt.Println(5)
		return
	} else {
		fmt.Println(int(math.Trunc(n/min)) + 5)
	}
}