package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	sort.Ints(a)

	paper := make([]int, 0)
	i := 0
	for i < len(a) {
		if i == len(a)-1 {
			paper = append(paper, a[i])
		} else {
			if a[i] == a[i+1] {
				i++
			} else {
				paper = append(paper, a[i])
			}
		}
		i++
	}

	fmt.Println(len(paper))
}
