package main

import (
	"fmt"
	"sort"
	"strings"
)

func main() {
	var nums [3]int

	for i, _ := range nums {
		var s int
		fmt.Scanf("%d", &s)
		nums[i] = s
	}

	sort.Ints(nums[:])

	var numStrs []string
	for _, n := range nums {
		numStrs = append(numStrs, fmt.Sprintf("%d", n))
	}

	fmt.Println(strings.Join(numStrs, " "))
}

