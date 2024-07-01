package main

import (
	"fmt"
)

func getTemp(T, H float64) (temp float64) {
	temp = T - 0.006*H
	return
}

func abs(x float64) float64 {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var N int
	var T, A float64
	fmt.Scan(&N, &T, &A)
	nums := make([]float64, N)
	p := 0
	for i := 0; i < N; i++ {
		fmt.Scan(&nums[i])
	}
	for i := 0; i < N; i++ {
		if abs(getTemp(T, nums[i])-A) < abs(getTemp(T, nums[p])-A) {
			p = i
		}
	}
	fmt.Println(p + 1)
}
