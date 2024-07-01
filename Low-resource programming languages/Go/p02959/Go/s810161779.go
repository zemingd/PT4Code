package main

import (
	"fmt"
	"strconv"
)

func parseInt(s string) int {
	i, _ := strconv.Atoi(s)
	return i
}

func createNums(num int) []int {
	nums := make([]int, num)
	for i := range nums {
		fmt.Scan(&nums[i])
	}
	return nums
}

func main() {
	var numN int
	var numsA, numsB []int

	fmt.Scan(&numN)
	numsA = createNums(numN + 1)
	numsB = createNums(numN)

	count := 0
	for i, v := range numsB {
		if numsA[i] >= v {
			count += v
		} else {

			if numsA[i]+numsA[i+1] >= v {
				count += v
				numsA[i+1] = numsA[i] + numsA[i+1] - v
			} else {
				count += numsA[i] + numsA[i+1]
				numsA[i+1] = 0
			}
		}
	}
	fmt.Println(count)
}
