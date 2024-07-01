package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, c, d int
	var ans1 int
	var ans2 int
	fmt.Scan(&a, &b, &c, &d)
	ans1 = max(a*c, a*d)
	ans2 = max(b*c, b*d)
	fmt.Println(max(ans1, ans2))

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
