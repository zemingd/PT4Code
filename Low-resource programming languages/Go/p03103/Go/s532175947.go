package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, m, a, b int
	fmt.Scan(&n, &m)
	as := make([]int, n)
	mp := make(map[int]int, n)
	for i := range as {
		fmt.Scan(&a, &b)
		as[i] = a
		mp[a] = b
	}
	sort.Ints(as)

	var price int
	for _, a := range as {
		if m <= mp[a] {
			price += a * m
			break
		} else {
			price += a * mp[a]
			m -= mp[a]
		}
	}
	fmt.Println(price)
}
