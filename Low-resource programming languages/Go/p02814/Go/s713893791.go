package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	nums := make([]int, n)
	var lcm int
	if n == 1 {
		fmt.Scan(&nums[0])
		lcm = nums[0]
	} else {
		fmt.Scan(&nums[0])
		fmt.Scan(&nums[1])
		lcm = nums[0] * nums[1] / GCD(nums[0], nums[1])
		for i := 2; i < n; i++ {
			fmt.Scan(&nums[i])
			lcm = LCM(lcm, nums[i])
		}
	}

	min := lcm / 2
	if min > m {
		fmt.Println("0")
		return
	}
	result := (m-min)/min/2 + 1
	fmt.Println(result)
}

func GCD(a, b int) int {
	for b != 0 {
		t := b
		b = a % b
		a = t
	}
	return a
}

func LCM(a, b int) int {
	result := a * b / GCD(a, b)

	return result
}
