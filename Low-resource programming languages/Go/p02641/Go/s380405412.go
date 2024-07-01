package main

import (
	"fmt"
	"math"
	"sort"
)

// go run ./main.go < in

func main() {
	var x, n int
	fmt.Scan(&x, &n)

	if n == 0 {
		fmt.Println(x)
	} else {

		var inputMap = make(map[int]bool)
		for i := 0; i < n; i++ {
			var x int
			fmt.Scan(&x)
			inputMap[x] = true
		}

		var nums []int
		for i := 0; i <= 100; i++ {
			if !inputMap[i] {
				nums = append(nums, i)
			}
		}

		sort.Sort(sort.IntSlice(nums))

		var past float64
		var pastIndex int
		for i, v := range nums {
			now := math.Abs(float64(x - v))
			if now < past || i == 0 {
				past = math.Abs(float64(x - v))
				pastIndex = i
			}
		}
		fmt.Println(nums[pastIndex])
	}
}
