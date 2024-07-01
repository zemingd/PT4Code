package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	dList := []int{}
	for i := 0; i < n; i++ {
		var d int
		fmt.Scan(&d)
		dList = append(dList, d)
	}

	sort.Sort(sort.IntSlice(dList))

	max := 0
	cnt := 0
	for _, val := range dList {
		if max < val {
			cnt++
			max = val
		}
	}

	fmt.Println(cnt)
}
