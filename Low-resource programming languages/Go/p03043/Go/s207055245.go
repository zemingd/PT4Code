package main

import (
	"fmt"
	"math"
)

func main() {
	// Code for C - Dice and Coin
	var N int
	var K float64
	fmt.Scanf("%d %f", &N, &K)

	var ans float64
	var temp float64
	var j int
	for i := 1; i <= N; i++ {
		j = 0
		for {
			temp = float64(i) * math.Pow(2, float64(j))
			if K <= temp {
				break
			} else {
				j++
			}
		}
		ans += 1 / (float64(N) * math.Pow(2, float64(j)))
	}

	fmt.Printf("%.12f\n", ans)
}
