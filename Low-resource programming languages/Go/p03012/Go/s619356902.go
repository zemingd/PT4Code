package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	weights := ScanNums(n)

	sum := 0
	for _, weight := range weights {
		sum += weight
	}

	minAbs := float64(sum)
	firstSum := 0
	for _, weight := range weights {
		firstSum += weight
		gapAbs := math.Abs(float64(sum-firstSum) - float64(firstSum))
		if gapAbs < minAbs {
			minAbs = gapAbs
		}
	}

	fmt.Println(int(minAbs))
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
