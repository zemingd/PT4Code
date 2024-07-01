package main

import (
	"fmt"
	"sort"
)

func main()  {
	var n int
	fmt.Scan(&n)
	values := ScanNums(n)
	sort.Ints(values)
	curValue := values[0]
	for i := 1; i < len(values); i++ {
		curValue = (curValue + values[i]) / 2
	}
	fmt.Println(curValue)
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
