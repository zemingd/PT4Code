package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)

	nums := make([]int, a)

	for i := range nums {
		fmt.Scan(&nums[i])
	}

	count := 0
	for i := 1; i < a-1; i++ {
		num1 := nums[i+1] - nums[i]
		num2 := nums[i] - nums[i-1]

		//fmt.Printf("num1:%d,num2:%d\n", num1, num2)
		if num1 < 0 && num2 < 0 {
			count++
		}
		if num1 > 0 && num2 > 0 {
			count++
		}
	}
	fmt.Println(count)
}
