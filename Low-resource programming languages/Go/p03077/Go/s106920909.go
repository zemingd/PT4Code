package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	carrieableNums := ScanNums(5)
	sort.Ints(carrieableNums)
	fmt.Println(int(math.Ceil(float64(n)/float64(carrieableNums[0]))) + 4)
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
