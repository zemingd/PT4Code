package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	var nums []int
	for n >= 1 {
		nums = append(nums, n%10)
		n /= 10
	}
	var sortedNums []int
	length := len(nums)
	for i := 0; i < length; i++ {
		sortedNums = append(sortedNums, nums[length-i-1])
	}
	for bits := 0; bits < (1 << uint64(3)); bits++ {
		res := sortedNums[0]
		resStr := strconv.Itoa(sortedNums[0])
		resNums := sortedNums[1:]
		for i := 0; i < 3; i++ {
			if bits>>uint64(i)&1 == 1 {
				res += resNums[i]
				resStr += "+"
				resStr += strconv.Itoa(resNums[i])
			} else {
				res -= resNums[i]
				resStr += "-"
				resStr += strconv.Itoa(resNums[i])
			}
		}
		if res == 7 {
			resStr += "=7"
			fmt.Println(resStr)
		}
	}
}
