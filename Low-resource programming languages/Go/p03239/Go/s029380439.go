package main

import "fmt"

func getMin(nums []int) (min int) {
	min = nums[0]
	for i := 0; i < len(nums); i++ {
		if nums[i] < min {
			min = nums[i]
		}
	}
	return
}

func main() {
	var N, T int
	fmt.Scan(&N, &T)
	var c []int
	for i := 0; i < N; i++ {
		var ci, ti int
		fmt.Scan(&ci, &ti)
		if ti <= T {
			c = append(c, ci)
		}
	}
	if len(c) == 0 {
		fmt.Println("TLE")
	} else {
		fmt.Println(getMin(c))
	}
}
