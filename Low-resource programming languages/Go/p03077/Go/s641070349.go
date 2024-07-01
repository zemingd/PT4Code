package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int64
	fmt.Scan(&n)
	carrieableNums := ScanNums(5)
	sort.Ints(carrieableNums)
	fmt.Println(n / int64(carrieableNums[0]) + 5)
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
