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
	result := (m-min)/lcm + 1
	fmt.Println(result)
}

func LCM(a, b int) int {
	result := a * b 

	return result
}
