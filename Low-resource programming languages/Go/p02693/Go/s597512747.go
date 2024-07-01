package main

import (
	"fmt"
	"math"
)

func scanNums(len int) []int {
	var num int
	var nums []int
	for i:=0; i <len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return nums
}

func checker(n int, nums []int) string {
	v := float64(nums[1]) / float64(n)
	i := int(math.Floor(v))

	if nums[0] <= i*n && i*n <= nums[1] && i > 1{
		return "OK"
	}
	return "NG"

}

func main() {
	var N int
	fmt.Scan(&N)
	nums:= scanNums(2)
	result := checker(N, nums)
	fmt.Println(result)
}