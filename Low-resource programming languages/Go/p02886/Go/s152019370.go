package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	d := scanNums(n)

	fmt.Println(answer(n, d))
}

func answer(n int, d *[]int) int {
	sum := 0
	for _, v := range *d  {
		sum += v
	}

	res := 0
	for _, v := range *d {
		res += (sum - v)*v
	}
	return res/2
}

func scanNums(len int) *[]int {
	var num int
	nums := make([]int, len)
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums[i] = num
	}
	return &nums
}
