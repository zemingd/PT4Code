package main

import (
	"fmt"
)

func main() {
	var n int
	nums := []int{}

	_, err := fmt.Scanf("%d", &n)
	if err != nil {
		return
	}
	if n <= 1 {
		fmt.Printf("0\n")
		return
	}

	for i:=0;i<n;i++{
		var tn int
		_, err := fmt.Scanf("%d", &tn)
		if err != nil {
			return
		}

		nums = append(nums, tn)
	}

	//开始真正的逻辑
	length := len(nums)
	sum := 0
	for i:=0;i+1<length;i++{
		for j:=i+1;j<length;j++{
			sum += nums[i]*nums[j]
			sum = sum %1000000007
		}
	}

	fmt.Printf("%d\n", sum)
}

