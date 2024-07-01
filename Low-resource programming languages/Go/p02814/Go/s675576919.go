package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	nums := make([]int, n)
	fmt.Scan(&nums[0])
	fmt.Scan(&nums[1])
	lcm := nums[0] * nums[1] / GCD(nums[0], nums[1])

	for i := 2; i < n; i++ {
		fmt.Scan(&nums[i])
		lcm = LCM(lcm, nums[i])
	}

	if lcm > m {
		fmt.Println("0")
		return
	}

	min := lcm / 2
	result := (m-min)/lcm + 1
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

func LCM(a, b int, integers ...int) int {
	result := a * b / GCD(a, b)

	for i := 0; i < len(integers); i++ {
		result = LCM(result, integers[i])
	}

	return result
}
