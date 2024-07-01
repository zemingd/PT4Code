package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	var su float64
	flag := true
	fmt.Scanf("%d", &n)

	nums := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%f", &nums[i])
	}

	s1 := nums[0]
	s2 := float64(0)
	for i := 1; i < n; i++ {
		s2 += nums[i]
	}

	diff := float64(s2 - s1)

	for i := 1; i < n; i++ {
		if flag {
			su = diff - 2 * nums[i]
			if su < 0 {
				flag = false
			}
		}

		if math.Abs(su) < diff {
			diff = math.Abs(su)
		}
	}
	fmt.Println(diff)
}