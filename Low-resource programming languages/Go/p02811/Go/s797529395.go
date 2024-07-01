package main

import (
	"fmt"
)

func main() {
	var k, x int64
	numArray := scanNums(2)
	k = numArray[0]
	x = numArray[1]

	if k*500 >= x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func scanNums(len int64) (nums []int64) {
	var num int64
	var i int64
	for i = 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func scanStr(len int64) (strs []string) {
	var str string
	var i int64
	for i = 0; i < len; i++ {
		fmt.Scan(&str)
		strs = append(strs, str)
	}
	return
}
