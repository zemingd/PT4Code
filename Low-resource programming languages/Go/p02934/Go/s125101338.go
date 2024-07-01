package main

import (
	"fmt"
	//"math"
	//"strings"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := scanNums(n)
	sum := 0.0
	for i := 0;i<n;i++{
		sum += 1/float64(a[i])
	}
	fmt.Print(1/sum)
}

func scanNums(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return
}