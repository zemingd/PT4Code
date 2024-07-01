package main

import (
	"fmt"
	"sort"
)

type pair struct {
	price int64
	stock int64
}

type Int64Slice []pair

func (p Int64Slice) Len() int           { return len(p) }
func (p Int64Slice) Less(i, j int) bool { return p[i].price < p[j].price }
func (p Int64Slice) Swap(i, j int)      { p[i], p[j] = p[j], p[i] }

func main() {
	var n, m int
	fmt.Scan(&n)
	fmt.Scan(&m)

	order := make(Int64Slice, 0, n)
	for index := 0; index < n; index++ {
		var a, b int64
		fmt.Scan(&a)
		fmt.Scan(&b)

		order = append(order, pair{price: a, stock: b})
	}

	sort.Sort(order)

	var re int64
	var c int
	for _, item := range order {
		if c == m {
			break
		}
		var index int64
		for index = 0; index < item.stock; index++ {
			if c < m {
				re += item.price
				c++
			}
		}
	}
	fmt.Println(re)
}
