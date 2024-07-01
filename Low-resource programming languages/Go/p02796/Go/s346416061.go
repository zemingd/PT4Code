package main

import (
	"fmt"
	"sort"
)

type As [][]int

func (a As) Len() int {
	return len(a)
}

func (a As) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func (a As) Less(i, j int) bool {
	return a[i][1] < a[j][1]
}

func main() {
	var n int
	fmt.Scan(&n)
	ls := make(As, n)
	for i := range ls {
		var x, l int
		fmt.Scan(&x, &l)
		ls[i] = []int{x - l, x + l}
	}
	sort.Sort(ls)

	var cnt int
	pr := int(-1e9 - 1)
	for i := range ls {
		l, r := ls[i][0], ls[i][1]
		if l >= pr {
			cnt++
			pr = r
		}
	}

	fmt.Println(cnt)
}
