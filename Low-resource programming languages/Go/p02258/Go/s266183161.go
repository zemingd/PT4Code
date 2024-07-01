package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func max(x int, y int) (ret int) {
	if x > y {
		ret = x
		return
	}
	ret = y
	return
}

func min(x int, y int) (ret int) {
	if x < y {
		ret = x
		return
	}
	ret = y
	return
}

func scanNums(len int) (nums []int) {
	for i := 0; i < len; i++ {
		sc.Scan()
		x := sc.Text()
		num, _ := strconv.Atoi(x)
		nums = append(nums, num)
	}
	return
}

func main() {
	// return value
	var output int

	// input the number of values
	var n int
	fmt.Scan(&n)

	// fetch values as a slice
	var nums []int
	nums = scanNums(n)

	maxv := nums[1] - nums[0]
	minv := nums[0]
	for i := 1; i < len(nums); i++ {
		maxv = max(maxv, nums[i]-minv)
		minv = min(minv, nums[i])
	}

	output = maxv
	fmt.Println(output)
}

