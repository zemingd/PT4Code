package main

import (
	"fmt"
)

func main() {
	var k, n int
	fmt.Scanf("%d %d", &k, &n)

	a := scanNums(n)

	fmt.Println(answer(k, n, a))
}

func answer(k int, n int, a *[]int) int {
	var maxDistance int = 0
	var distance int = 0
	for i := 0; i < n-1; i++ {
		distance = (*a)[i+1] - (*a)[i]
		if maxDistance < distance {
			maxDistance = distance
		}
	}
	distance = k - (*a)[n-1] + (*a)[0]
	if maxDistance < distance {
		maxDistance = distance
	}

	return k-maxDistance
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