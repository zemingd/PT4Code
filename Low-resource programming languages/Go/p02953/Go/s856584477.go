package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)

	nums := make([]int, a)
	for i := range nums {
		fmt.Scan(&nums[i])
	}

	count := 0
	for i := 1; i < a; i++ {

		if nums[i-1]-1 <= nums[i] {
			if nums[a-1] < nums[a-2] {
				count++
			}
		} else {
			count++
		}
	}
	if count == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
