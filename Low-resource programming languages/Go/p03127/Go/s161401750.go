package main

import (
	"fmt"
)

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func main() {
	var N int
	fmt.Scan(&N)
	nums := scanNums(N)
	sort.Sort(sort.Reverse(sort.IntSlice(nums)))

	ans := nums[0]
	for i := 1; i < len(nums); i++ {
		ans = gcd(ans, nums[i])
	}

	fmt.Println(ans)
	return
}