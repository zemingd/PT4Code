package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	if n < 2 || n >50{
		return
	}

	nums := make([]int, n)
	for i:=0; i<len(nums); i++{
		fmt.Scan(&nums[i])
	}

	sum := 0
	for i:=0; i<len(nums); i++{
		for j:=i+1; j<len(nums); j++{
			sum += nums[i] * nums[j]
		}
	}

	fmt.Println(sum)
}