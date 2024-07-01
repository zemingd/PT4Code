package main

import (
	"fmt"
)

func main() {
	var s, t string
	strArray := scanStr(2)
	s = strArray[0]
	t = strArray[1]

	fmt.Println(t + s)
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
