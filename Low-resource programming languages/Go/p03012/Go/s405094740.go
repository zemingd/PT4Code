package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	nn := []float64{}
	re := float64(1000000000000)
	for index := 0; index < n; index++ {
		var na float64
		fmt.Scan(&na)

		nn = append(nn, na)
	}

	for index := 1; index < n; index++ {
		tmp := nn[index:]
		var s1 float64
		for _, item := range tmp {
			s1 += item
		}
		tmp2 := nn[:index]
		var s2 float64
		for _, item := range tmp2 {
			s2 += item
		}

		tre := math.Abs(s1 - s2)
		if re > tre {
			re = tre
		}
	}

	fmt.Println(re)
}

func Max(nums ...int) int {
	if len(nums) == 0 {
		panic("function max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}
