package main

import (
	"fmt"
	"math"
)

func main() {
	var  A,B,N float64
	fmt.Scan(&A,&B,&N)
	var max float64
	var i float64
	if B < N {
		N = B
	}
	max = 0
	for i = N; i>0; i-- {
		value := math.Floor(A*i/B) - A*math.Floor(i/B)
		//if value != 0 {
		//	max = value
		//	break
		//}
		fmt.Println(value,i)
		if value > max {
			max = value
		}
	}
	fmt.Println(max)
}