package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
	}
	for _, i := range nums {
		if i % 2 == 0 && i % 3 != 0 && i % 5 != 0 {
			fmt.Println("DENIED")
			return
		}
	}
	fmt.Println("APPROVED")
	return
}
