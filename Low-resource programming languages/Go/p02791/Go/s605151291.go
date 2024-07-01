package main

import (
	"fmt"
)

func main() {

	var (
		n, count int
	)
	fmt.Scan(&n)
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
	}
	var newNums []int
	var ex int

	for i := 1; i < len(nums); i++ {
		if nums[i] < nums[i-1] && nums[i] > ex {
			var a bool
			a = true

			newNums = nums[:i-1]
			for _, k := range newNums {
				if nums[i] > k {
					a = false
					ex = k
					break
				}
			}
			if a == true {
				count++
			}
		} else {
			continue
		}
	}
	fmt.Println(count + 1)
}