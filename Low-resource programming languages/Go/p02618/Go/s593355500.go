package main

import (
	"fmt"
	"math"
)

func main() {
	var d int
	fmt.Scan(&d)

	c := make([]int, 26)
	s := make([][]int, d)
	for i := 0; i <26; i++ {
		fmt.Scan(&c[i])
	}
	// 単純にmax Sを出してみる
	for i := 0; i < d; i++ {
		smax := 0
		maxI := 0
		slice := make([]int, 26)
		for j := 0; j < 26; j++ {
			fmt.Scan(&slice[j])
			if smax < slice[j] {
				smax = slice[j]
				maxI = j
			}
		}
		s[i] = slice
		fmt.Println(maxI+1)
	}

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
