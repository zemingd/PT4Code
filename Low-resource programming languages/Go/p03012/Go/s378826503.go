package main

import (
	"fmt"
	"math"
)

func main() {

	var a int
	fmt.Scan(&a)

	list := make([]int, a)
	for i := 0; i < a; i++ {
		fmt.Scan(&list[i])
	}

	min := 100000.0
	for i := 0; i < a; i++ {
		aTotal := 0
		bTotal := 0
		for j := 0; j <= i; j++ {
			aTotal += list[j]
		}
		for k := i + 1; k < a; k++ {
			bTotal += list[k]
		}

		if math.Abs(float64(aTotal-bTotal)) < min {
			min = math.Abs(float64(aTotal - bTotal))
		}
	}
	fmt.Println(min)
}
