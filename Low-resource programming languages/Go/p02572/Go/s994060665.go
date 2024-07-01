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

	sums := make([]int, length)  //用来加速运算
	sums[length-1] = nums[length-1]
	for i:=len(sums)-2;i>=0;i--{
		sums[i] = sums[i+1] + nums[i]
	}

	for i:=0;i+1<length;i++ {
		sum += nums[i] * (sums[i] - nums[i])
	}
	
	sum = sum % 1000000007
	fmt.Printf("%d\n", sum)
}

