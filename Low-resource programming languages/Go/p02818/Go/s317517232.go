package main

import (
	"fmt"
	"math"
)

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func main() {
	var A, B, K int
	fmt.Scan(&A, &B, &K)
	if A-K >= 0 {
		fmt.Println(A-K, B)
	} else {
		fmt.Println(0, max(0, B-(K-A)))
	}
}
