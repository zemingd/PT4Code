package main

import (
	"fmt"
	"sort"
)

func sum(s []int) int {
	sum := 0
	for _, n := range s {
		sum += n
	}
	return sum
}

func abs(s int) int {
	if s > 0 {
		return s
	}
	return -s
}

func main() {
	var n int
	fmt.Scan(&n)
	var ws []int
	for i := 0; i < n; i++ {
		var w int
		fmt.Scan(&w)
		ws = append(ws, w)
	}
	var results []int
	for i := 0; i < n; i++ {
		diff := abs(sum(ws[:i+1]) - sum(ws[i+1:]))
		results = append(results, diff)
	}
	sort.Ints(results)
	fmt.Println(results[0])
}
