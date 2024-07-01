package main

import (
	"fmt"
	"math"
)

func main() {
	a := SingleInt()
	slice := make([]int, 0, a)

	for i := 0; i < a; i++ {
		slice = append(slice, SingleInt())
	}

	var accessor int
	var lastAccessor int
	var c int
	for {
		idx := slice[accessor] - 1 // 2, 0, 2
		lastAccessor = accessor    // 0, 2, 0
		c++
		accessor = idx // 2, 0, 2
		if slice[accessor]-1 == lastAccessor {
			fmt.Println(-1)
			return
		}
		if slice[idx] == 2 {
			c++
			fmt.Println(c)
			return
		}
	}
}

func SingleInt() int {
	var n int
	fmt.Scan(&n)
	return n
}

func Min(nums ...int) int {
	if len(nums) == 0 {
		panic("function min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}
