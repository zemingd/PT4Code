package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	var num int
	var values []int
	for i := 0; i < n; i++ {
		fmt.Scan(&num)
		values = append(values, num)
	}
	var costs []int
	for i := 0; i < n; i++ {
		var num int
		fmt.Scan(&num)
		costs = append(costs, num)
	}

	var realValues []int
	for i := 0; i < n; i++ {
		realValues = append(realValues, values[i]-costs[i])
	}
	var sum = 0
	sort.Sort(sort.Reverse(sort.IntSlice(realValues)))
	for _, realValue := range realValues {
		if realValue > 0 {
			sum += realValue
		} else {
			break
		}
	}

	fmt.Println(sum)
}
