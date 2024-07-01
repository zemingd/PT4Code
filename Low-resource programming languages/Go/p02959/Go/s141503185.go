package main

import (
	"fmt"
	"strconv"
	"strings"
)

func parseInt(s string) int {
	i, _ := strconv.Atoi(s)
	return i
}

func createNums(ary string) (nums []int) {
	for _, v := range strings.Split(ary, " ") {
		nums = append(nums, parseInt(v))
	}
	return
}

func scanNums(length int) (numbers []int) {
	var number int
	for i := 0; i < length; i++ {
		fmt.Scan(&number)
		numbers = append(numbers, number)
	}
	return
}

func main() {
	var n int
	fmt.Scan(&n)
	numsA := scanNums(n + 1)
	numsB := scanNums(n)

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
