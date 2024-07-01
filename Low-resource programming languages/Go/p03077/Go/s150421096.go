package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	var n float64
	fmt.Scan(&n)
	carrieableNums := ScanNums(5)
	sort.Ints(carrieableNums)
	minCarriableNum := carrieableNums[0]
	if float64(minCarriableNum) >= n {
		fmt.Println(5)
	} else {
		fmt.Println(int(math.Ceil(n / float64(minCarriableNum))) + 4)
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
