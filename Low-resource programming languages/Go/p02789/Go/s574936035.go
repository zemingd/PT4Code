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
	for i, num := range nums {
		var a bool
		a = true

		newNums := nums[:i]
		for _, k := range newNums {
			if num > k {
				a = false
				break
			}
		}
		if a == true {
			count++
		}
	}
	fmt.Println(count)
}