package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	odd_map := make(map[int]int, n/2)
	even_map := make(map[int]int, n/2)
	var nums []int
	for i := 1; i <= n; i++ {
		var v int
		fmt.Scan(&v)
		if i%2 != 0 {
			odd_map[v]++
		} else {
			even_map[v]++
		}
		nums = append(nums, v)
	}

	var odd int
	var even int
	var odd_max int
	var even_max int
	for k, v := range odd_map {
		if v > odd_max {
			odd = k
			odd_max = v
		}
	}
	for k, v := range even_map {
		if v > even_max {
			even = k
			even_max = v
		}
	}

	var count float64
	for i := 1; i <= n; i++ {
		num := nums[i-1]
		if i%2 != 0 && num != odd {
			tmp := math.Abs(float64(num) - float64(odd))
			count += tmp
		} else if i%2 == 0 && num != even {
			tmp := math.Abs(float64(num) - float64(even))
			count += tmp
		}
	}

	fmt.Println(count)
}
