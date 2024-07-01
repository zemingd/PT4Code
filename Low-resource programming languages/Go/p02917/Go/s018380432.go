package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)

	inputs := scanNums(N)
	var ans float64

	for i := N - 2; i >= 0; i-- {
		ans += math.Min(float64(inputs[i]), float64(inputs[i+1]))
	}

	ans += float64(inputs[0])
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
