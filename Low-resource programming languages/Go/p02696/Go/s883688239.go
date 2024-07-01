package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for D - Floor Function
	var A, B int
	var N int
	fmt.Scan(&A, &B, &N)

	/*
		var ans int
		var max int

		for i := 0; i <= B-1; i++ {
			ans = int(math.Ceil(float64((A * i) / B)))
			if max < ans {
				max = ans
			}
		}
	*/

	//fmt.Println(max)
	i := int(math.Min(float64(B-1), float64(N)))
	fmt.Println(int(math.Ceil(float64((A*i)/B))) - A*int(math.Ceil(float64(i/B))))
}
