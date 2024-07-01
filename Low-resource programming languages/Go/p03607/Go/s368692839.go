package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	paper := make([]int, 0)
	for _, v := range a {
		if contains(paper, v) {
			paper = filter(paper, func(n int) bool {
				return n != v
			})
		} else {
			paper = append(paper, v)
		}
	}

	fmt.Println(len(paper))
}

func contains(list []int, n int) bool {
	for _, a := range list {
		if a == n {
			return true
		}
	}
	return false
}

func filter(list []int, f func(int) bool) []int {
	filter := make([]int, 0)
	for _, v := range list {
		if f(v) {
			filter = append(filter, v)
		}
	}
	return filter
}
