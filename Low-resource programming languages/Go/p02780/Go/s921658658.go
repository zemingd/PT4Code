package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	P := 1000
	fmt.Scan(&N, &K)
	// inputs := make([]int, N+1)
	exceptedValues := make([]float64, P+1)
	var exceptedValue float64
	input := 0
	var res float64
	// max_dice := make([]float64, 3)

	for i := 0; i < N; i++ {
		fmt.Scan(&input)
		exceptedValue = getExceptedValue(input)
		exceptedValues[i] = exceptedValue
		// fmt.Println(input, exceptedValue)
		if i >= K-1 {
			var x float64
			for j := 0; j < K; j++ {
				x += exceptedValues[i-j]
			}
			res = math.Max(res, x)
		}
		// fmt.Println(res)
	}
	fmt.Println(res)

}

func getExceptedValue(N int) float64 {
	cont := 0
	for i := 0; i < N; i++ {
		cont += i + 1
	}
	res := float64(cont) / float64(N)
	return res
}
