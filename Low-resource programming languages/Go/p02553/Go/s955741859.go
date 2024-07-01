package main

import (
	"fmt"
)


func main() {
	var a,b,c,d int
	fmt.Scan(&a,&b,&c,&d)


	max := max(a * c ,a * d ,b * c ,b * d)
	fmt.Println(max)
	return
}


func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		if res < nums[i] {
			res = nums[i]
		}
	}
	return res
}


// func max(a, b int) int {
// 	if a > b {
// 		return a
// 	}
// 	return b
// }
