package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	fmt.Println(answer(a, b))
}

func answer(a int, b int) int {
	m := min(a, b)

	var res []int
	var cFlag bool

	for i := 2; i <= m; i++ {
		cFlag = false
		if a%i == 0 && b%i == 0 {
			for _, v := range res {
				if i%v == 0 {
					cFlag = true
					break
				}
			}
		} else {
			continue
		}
		if cFlag {
			continue
		}
		res = append(res, i)
	}
	
	return len(res)+1
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("function min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func minArray(nums *[]int) int {
	res := (*nums)[0]
	for _, v := range *nums {
		res = int(math.Min(float64(res), float64(v)))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("function max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func maxArray(nums *[]int) int {
	res := (*nums)[0]
	for _, v := range *nums {
		res = int(math.Max(float64(res), float64(v)))
	}
	return res
}
