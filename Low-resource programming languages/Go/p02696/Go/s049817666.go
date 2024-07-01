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

	var ans int
	var max int
	var temp int
	for i := 1; i <= N; i++ {
		ans = int(math.Ceil(float64((A*i)/B))) - A*int(math.Ceil(float64(i/B)))
		if temp > ans {
			break
		}

		if max < ans {
			max = ans
		}
		temp = ans
		//fmt.Println(ans)
	}

	fmt.Println(max)
}
