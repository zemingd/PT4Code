package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, n int
	fmt.Scanf("%d", &x)
	fmt.Scanf("%d", &n)

	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &nums[i])
	}

	sort.Ints(nums)

	answer := x
LOOP:
	for i := 0; i < n; i++ {
		if x == nums[i] {
			for j := 1; j < n-1; j++ {
				if x-j != nums[i-j] {
					answer = x - j
					break LOOP
				} else if x+j != nums[i+j] {
					answer = x + j
					break LOOP
				}
			}
		}
	}

	fmt.Println(answer)
}
