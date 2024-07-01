package main

import (
	"fmt"
	"math"
)

func abs(a int) int {
	if a < 0 {
		return -a
	} else {
		return a
	}
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

func main() {
	var a int
	var b float64
	fmt.Scan(&a,&b)
	b=b*100
	bi:=int(math.Round(b))
	fmt.Println(a*bi/100)


}
