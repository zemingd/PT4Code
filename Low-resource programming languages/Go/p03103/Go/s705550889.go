package main

import (
	"fmt"
	"sort"
)

type shop struct {
	a int // 値段
	b int // 在庫
}

type byPrice []shop

func (s byPrice) Len() int           { return len(s) }
func (s byPrice) Swap(i, j int)      { s[i], s[j] = s[j], s[i] }
func (s byPrice) Less(i, j int) bool { return s[i].a < s[j].a }

func main() {
	n, m := 0, 0
	fmt.Scan(&n, &m)

	s := make([]shop, n)
	for i := range s {
		fmt.Scan(&s[i].a, &s[i].b)
	}

	sort.Sort(byPrice(s))

	count := 0
	price := 0
	for i := range s {
		count += s[i].b
		if count >= m {
			x := count - m
			price += s[i].a * (s[i].b - x)
			fmt.Println(price)
			return
		}
		price += s[i].a * s[i].b
	}
}
