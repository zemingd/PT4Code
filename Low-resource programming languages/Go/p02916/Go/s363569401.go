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
	b := scanNums(n)
	c := scanNums(n)
	sum:= 0
	prenum := -1 
	for i:=0;i<n;i++{
		sum += b[a[i]-1]
		if a[i] == prenum + 1{
			sum += c[a[i]-2]
		}
		prenum = a[i]
	}
	fmt.Print(sum)
}

func scanNums(len int) (nums []int) {
    var num int
    for i := 0; i < len; i++ {
        fmt.Scan(&num)
        nums = append(nums, num)
    }
    return
}
