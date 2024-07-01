package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	input := append([]int{0},scanNums(N)...)
	output := make([]int, N+1)

	var count int
	for i := N; i > 0; i-- {
		s := sumOfMultiple(output, N+1, i)
		if s%2 != input[i] {
			switch input[1]{
			case 0:
				output[i] = 1
				count++
			case 1:
				output[i] = 0
			}
		}
	}

	if input[1]%2 != output[1] {
		fmt.Print(-1)
	} else {
		fmt.Println(count)
		for i := 1; i <= N; i++ {
			if output[i] == 1{
				fmt.Print( i)
				if i != N{
					fmt.Print(" ")
				}
			}
		}
	}
	return
}

func sumOfMultiple(arr []int, size int, baseNum int) int {
	var sum int
	for i := baseNum; i < size; i += baseNum {
		sum += arr[i]
	}
	return sum
}

func maxInt(x, y int) int {
	if x > y {
		return x
	}
	return y
}
func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
