package main

import "fmt"

func main() {

	var N int
	fmt.Scan(&N)

	nums := make([]int, N)

	var first int = 0
	var second int = -1

	for i := 0; i < N ; i++ {
		fmt.Scan(&nums[i])

		if first <= nums[i] {
			second = first
			first = nums[i]
		} else if second <= nums[i] {
			second = nums[i]
		}

	}

	for i := 0 ; i <  N ; i++ {
		if nums[i] != first {
			fmt.Println(first)
		} else {
			fmt.Println(second)
		}
	}
	
}
