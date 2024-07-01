package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	inputs := scanNums(N)

	// fmt.Println(inputs)

	maxValue := 0
	secondValue := 0
	maxValueCols := []int{}
	secondValueCols := []int{}
	for i, v := range inputs {
		if maxValue == v {
			maxValueCols = append(maxValueCols, i)
		} else if v > maxValue {
			secondValue = maxValue
			secondValueCols = maxValueCols

			maxValue = v
			maxValueCols = []int{i}

		} else if v > secondValue {
			secondValue = v
			secondValueCols = []int{i}
		} else {
			continue
		}
	}
	// fmt.Println(maxValue, maxValueCols)
	// fmt.Println(secondValue, secondValueCols)
	res := createRes(N, maxValue, secondValue, maxValueCols, secondValueCols)
	fmt.Println(res)

}

func createRes(N, maxValue, secondValue int, maxValueCols, secondValueCols []int) (res []int) {
	for i := 0; i < N; i++ {
		res = append(res, maxValue)
	}
	if len(maxValueCols) == 1 {
		res[maxValueCols[0]] = secondValue
	}
	return
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
