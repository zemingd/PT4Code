package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	inputs := scanNums(N)
	var res float64 = 0
	for _, v := range inputs {
		res += 1 / v
	}

	fmt.Println(1 / res)

}

func scanNums(len int) (nums []float64) {
	var num float64
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, float64(num))
	}
	return
}
