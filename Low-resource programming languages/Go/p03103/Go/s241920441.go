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

	var price, cnt int
	for _, a := range as {
		if m-cnt <= mp[a] {
			price += a * (m - cnt)
			break
		}
		price += a * mp[a]
		cnt += mp[a]
	}
	fmt.Println(price)
}
