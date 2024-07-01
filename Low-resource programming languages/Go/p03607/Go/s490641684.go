package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanln(&n)

	a := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scanln(&a[i])
	}

	fmt.Println(logic(a))
}

func logic(nums []int) int {
	m := make(map[int]int)
	for _, num := range nums {
		m[num]++
	}

	result := 0
	for _, v := range m {
		if v%2 != 0 {
			result++
		}
	}
	return result
}