package main

import (
	"fmt"
)

func changeMin(min int, isSmall bool) int {
	if isSmall || min%10 == 0 {
		return min
	} else {
		return min + (10 - (min % 10))
	}
}

func minNumsIndex(nums []int) int {
	var index int
	num := nums[0] % 10
	for i := 1; i < len(nums); i++ {
		n := nums[i] % 10
		if num == 0 || n != 0 && num > n {
			index = i
			num = nums[i] % 10
		}
	}
	return index
}

func main() {
	var a, b, c, d, e int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)
	fmt.Scan(&e)
	minList := []int{a, b, c, d, e}
	minIndex := minNumsIndex(minList)
	allMin := 0
	// fmt.Println("minIndex=", minIndex)
	for i := 0; i < len(minList); i++ {
		allMin += changeMin(minList[i], i == minIndex)
		// fmt.Println("allMin=", allMin)
	}
	fmt.Println(allMin)
}
