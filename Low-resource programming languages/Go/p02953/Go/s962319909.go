package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
	}

	flag := true
	for i := 0; i < n-1; i++ {
		if nums[i] <= nums[i+1] {
			continue
		}
		nums[i]--
	}
	for i := 0; i < n-1; i++ {
		if nums[i] > nums[i+1] {
			flag = false
		}
	}
	if flag {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
