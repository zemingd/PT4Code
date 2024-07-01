package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)

	inputs := scanNums(N)

	rightNum := N - 1
	leftNum := 0
	s1 := inputs[leftNum]
	s2 := inputs[rightNum]
	for {
		// fmt.Println(s1, s2)
		if s1 >= s2 {
			rightNum--
			s2 += inputs[rightNum]
		} else {
			leftNum++
			s1 += inputs[leftNum]
		}

		if leftNum+1 == rightNum {
			break
		}
	}
	ans := math.Abs(float64(s1) - float64(s2))
	fmt.Println(int(ans))

}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
