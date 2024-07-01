package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	
	nums := make([]int,n)
	for i,_ := range nums {
		fmt.Scan(&nums[i])
	}
	
	for i,_ := range nums {
		max := 0
		for j,_ := range nums {
			if i != j && max < nums[j]{
				max = nums[j]
			}
		}
		fmt.Println(max)
	}
}