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
	for i = 1; i<=N; i++ {
		value := math.Floor(A*i/B) - A*math.Floor(i/B)
		if value > max {
			max = value
		}
	}
	fmt.Println(max)
}