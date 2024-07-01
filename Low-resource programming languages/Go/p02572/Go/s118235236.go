package main 

import (
	"fmt"
	"math"
	// "strings"
)

var n int
var num int

func main() {
	fmt.Scan(&n)

	var nums [] int
	for i:=0; i<n; i++ {
		fmt.Scan(&num)
		nums =  append(nums, num)
	}
	length := len(nums)

	ans := 0

	for index, value :=  range nums {
		for i := index+1; i<length; i++ {
			ans += value * nums[i]
		}
	}
	ansdivisioner := math.Pow(10, 9) + 7
	fmt.Println(ans%int(ansdivisioner))
}