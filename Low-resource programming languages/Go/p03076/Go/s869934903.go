package main

import (
	"fmt"
	"sort"
)

func main() {
	rawTimes := make([]int, 5)
	var adjustedTimes []int

	for i := 0; i < 5; i++ {
		fmt.Scan(&rawTimes[i])

		raw := rawTimes[i]
		if raw%10 != 0 {
			adjustedTimes = append(adjustedTimes, 10 - raw%10)
		}
	}

	sort.Sort(sort.Reverse(sort.IntSlice(adjustedTimes)))

	if len(adjustedTimes) != 0 {
		adjustedTimes[0] = 0
	}

	totalTime := 0
	for _, v := range append(rawTimes, adjustedTimes...) {
		totalTime += v
	}

	fmt.Println(totalTime)
}