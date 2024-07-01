package main

import (
	"fmt"
)

func main() {
	var a,b,k int
	fmt.Scan(&a,&b,&k)
	
	nums := make([]int, b-a+1)
	
	input := a
	for i := 0; i < len(nums); i++ {
		nums[i] = input
		input++
	}
	
	
	if b - a + 1 <= k * 2 {
		for i := 0; i < len(nums); i++{
			fmt.Println(nums[i])
		}
	} else {
		for i := 0; i < k; i++ {
			fmt.Println(nums[i])
		}
		for i := len(nums)-k; i < len(nums); i++ {
			fmt.Println(nums[i])
		}
	}
	
}