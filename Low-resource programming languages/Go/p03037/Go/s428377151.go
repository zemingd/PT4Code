package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	inputs := scanNums(M)
	maxL := 1
	minR := N
	for _, v := range inputs {
		L := v[0]
		R := v[1]
		if maxL <= L {
			maxL = L
		}
		if minR >= R {
			minR = R
		}
		// fmt.Println(L, R, maxL, minR)
	}

	res := minR - maxL + 1
	if res < 0 {
		res = 0
	}
	fmt.Println(res)

}

func scanNums(len int) (nums [][]int) {
	var numL, numR int

	for i := 0; i < len; i++ {
		fmt.Scan(&numL, &numR)
		LR := make([]int, 0)
		LR = append(LR, numL)
		LR = append(LR, numR)
		nums = append(nums, LR)
	}
	return
}
