package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	carrieableNums := ScanNums(5)
	sort.Ints(carrieableNums)
	minCarriableNum := carrieableNums[0]
	if minCarriableNum == n {
		fmt.Println(5)
	} else {
		fmt.Println(n/minCarriableNum + 5)
	}
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
