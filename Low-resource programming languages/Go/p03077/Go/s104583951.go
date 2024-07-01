package main

import (
	"fmt"
	"math"
)

func minFn(nums []int) int {
	res := nums[0]
	for i := 1; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func main() {
	var n, a, b, c, d, e int
	fmt.Scan(&n)
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&d)
	fmt.Scan(&e)
	min := minFn([]int{a, b, c, d, e})
	amari := n%min != 0
	z := uint64(n) / uint64(min)
	if amari {
		z++
	}
	fmt.Println(z + 4)
}
