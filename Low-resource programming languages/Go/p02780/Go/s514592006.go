package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	// P := 1000
	fmt.Scan(&N, &K)
	exceptedValues := make([]float64, N+1)
	var exceptedValue float64
	input := 0
	var res float64
	execptedValueMemo := make([]float64, 1001)

	var x float64
	for i := 0; i < N; i++ {
		fmt.Scan(&input)
		exceptedValue = execptedValueMemo[input]
		if exceptedValue == 0 {
			exceptedValue = getExceptedValue(input)
			execptedValueMemo[input] = exceptedValue
		}
		exceptedValues[i] = exceptedValue

		exceptedValues = append(exceptedValues, exceptedValue)
		// fmt.Println(input, exceptedValue)
		if i >= K-1 {

			for j := 0; j < K; j++ {
				x += exceptedValues[i-j]
			}
			res = math.Max(res, x)
		}
		x = 0
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
