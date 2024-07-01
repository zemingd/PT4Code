package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, y, z, K, cake int
	fmt.Scan(&x, &y, &z, &K)

	var one [1000]int
	var two, three []int
	for i := 0; i < x; i++ {
		fmt.Scan(&one[i])
	}
	for i := 0; i < y; i++ {
		fmt.Scan(&cake)
		for j := 0; j < x; j++ {
			two = append(two, cake+one[j])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(two)))
	for i := 0; i < z; i++ {
		fmt.Scan(&cake)
		for j := 0; j < K && j < x*y; j++ {
			three = append(three, cake+two[j])
		}

	}
	sort.Sort(sort.Reverse(sort.IntSlice(three)))
	for i := 0; i < K; i++ {
		fmt.Println(three[i])
	}

}
