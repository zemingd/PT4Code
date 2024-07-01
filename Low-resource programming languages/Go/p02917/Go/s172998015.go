package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)

	inputs := scanNums(N)
	ans := float64(inputs[0])

	for i := 1; i < N; i++ {
		ans += math.Min(float64(inputs[i]), float64(inputs[i-1]))
	}

	fmt.Println(ans)
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
