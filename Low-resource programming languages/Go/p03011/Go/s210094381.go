package main

import (
	"fmt"
	"sort"
)

func main() {
	times := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&times[i])
	}
	sort.Sort(sort.IntSlice(times))
	fmt.Println(times[0] + times[1])
}