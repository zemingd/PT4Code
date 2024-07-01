package main

import (
	"fmt"
	"sort"
)

type Int64Slice []int64

func (p Int64Slice) Len() int           { return len(p) }
func (p Int64Slice) Less(i, j int) bool { return p[i] < p[j] }
func (p Int64Slice) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func main() {
	var n, m int
	fmt.Scan(&n)
	fmt.Scan(&m)

	order := make(Int64Slice, 0, n)
	pmap := map[int64]int64{}
	for index := 0; index < n; index++ {
		var a, b int64
		fmt.Scan(&a)
		fmt.Scan(&b)

		pmap[a] = b
		order = append(order, a)
	}

	sort.Sort(order)

	var re int64
	var c int
	for _, item := range order {
		can := pmap[item]
		var index int64
		for index = 0; index < can; index++ {
			re += item
			c++
			if c == m {
				fmt.Printf("%#v\n", re)
				return
			}
		}
	}
}
