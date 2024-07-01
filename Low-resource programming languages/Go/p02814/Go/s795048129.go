package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scanf("%d %d", &n, &m)
	nums := make([]int, n)
	var lcm int
	var check int
	fmt.Scan(&nums[0])
	check = counter(nums[0])
	if n > 1 {
		fmt.Scan(&nums[1])
		lcm = nums[0] * nums[1] / GCD(nums[0], nums[1])
		if counter(nums[1]) != check || nums[1]/2 > m {
			fmt.Println("0")
			return
		}
		for i := 2; i < n; i++ {
			fmt.Scan(&nums[i])
			lcm = LCM(lcm, nums[i])
			if counter(nums[i]) != check || nums[i]/2 > m {
				fmt.Println("0")
				return
			}
		}
	} else {
		lcm = nums[0]
	}

	min := lcm / 2
	if min > m {
		fmt.Println("0")
		return
	}
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

func LCM(a, b int) int {
	result := a * b / GCD(a, b)

	return result
}

func counter(a int) int {
	result := 0
	for a%2 == 0 {
		result++
		a /= 2
	}
	return result
}
