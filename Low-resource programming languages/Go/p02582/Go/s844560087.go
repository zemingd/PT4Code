package main

import (
	"fmt"
	"math"
)

func main() {
	// input
	var tmp string
	fmt.Scan(&tmp)

	// configuration
	count := 0
	ans := 0

	// check
	for i := 0; i < len(tmp); i++ {
		if string(tmp[i]) == "R" {
			count++
			ans = count
		} else {
			ans = max(ans, count)
			count = 0
		}
	}

	// output
	fmt.Println(ans)

}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

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
