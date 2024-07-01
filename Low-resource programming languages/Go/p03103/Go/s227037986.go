package main

import (
	"fmt"
	"sort"
)

type Shop struct {
	a, b int
}

type Shops []Shop

func (s Shops) Len() int {
	return len(s)
}
func (s Shops) Less(i, j int) bool {
	return s[i].a < s[j].a
}
func (s Shops) Swap(i, j int) {
	t := s[i]
	s[i] = s[j]
	s[j] = t
}

func main() {
	var N, M int
	fmt.Scanln(&N, &M)

	shops := make(Shops, N)
	for i := 0; i < N; i++ {
		fmt.Scanln(&shops[i].a, &shops[i].b)
	}
	sort.Sort(shops)

	result := 0
	m := 0

	for _, sh := range shops {
		buy := sh.b
		if m+buy > M {
			buy = M - m
		}
		result += sh.a * buy
		m += buy
	}

	fmt.Println(result)
}
