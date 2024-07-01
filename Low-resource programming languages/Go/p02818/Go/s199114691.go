package main

import (
	"fmt"
)

func main() {
	array := scanNums(3)
	a := array[0]
	b := array[1]
	k := array[2]

	var a2 int64
	var b2 int64
	if a < k {
		a2 = 0
		if a+b < k {
			b2 = 0
		} else {
			b2 = a + b - k
		}
	} else {
		a2 = a - k
		b2 = b
	}

	fmt.Println(a2, b2)
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
