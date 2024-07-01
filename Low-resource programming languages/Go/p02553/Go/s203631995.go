package main

import "fmt"

func main() {
	nums := make([]int, 4)
	for i:=0; i<len(nums); i++{
		fmt.Scan(&nums[i])
	}

	max := 0
	for i:=0; i<2; i++{
		if max < nums[i] * nums[2]{
			max = nums[i] * nums[2]
		}
		if max < nums[i] * nums[3]{
			max = nums[i] * nums[3]
		}
	}
	fmt.Println(max)
}