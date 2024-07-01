package main

import (
	"fmt"
	"math"
)

func main() {
	var n,l int
	var nums []int
	var mini =-1
	var minv = 1000.0
	fmt.Scan(&n,&l)
	for i:=	0;i<n;i++{
		nums = append(nums,l+i)
		abs := math.Abs(float64(l+i))
		if minv > abs{
			mini = i
			minv = abs
		}
	}
	sum := 0
	for i:=	0;i<n;i++{
		if mini == i{
			continue
		}
		sum += nums[i]
	}
	fmt.Print(sum)
}