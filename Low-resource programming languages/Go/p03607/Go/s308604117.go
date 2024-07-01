package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	nums := map[int]bool{}
	var a int
	i := 0
	for i < n {
		i++
		fmt.Scan(&a)
		if _, ok := nums[a]; ok {
			delete(nums, a)
		} else {
			nums[a] = true
		}
	}
	fmt.Println(len(nums))
}