package main

import (
	"fmt"
	"sort"
)

func main() {
	var A, B, M int
	fmt.Scan(&A, &B, &M)

	a := make([]int, A)
	for i := 0; i < A; i++ {
		fmt.Scan(&a[i])
	}

	b := make([]int, B)
	for i := 0; i < B; i++ {
		fmt.Scan(&b[i])
	}

	var ai, bi, c int
	list := make([]coupon, M)
	for i := 0; i < M; i++ {
		fmt.Scan(&ai, &bi, &c)
		list[i] = coupon{ai - 1, bi - 1, c}
	}

	min := 0
	for i, v := range list {
		if i == 0 {
			min = a[v.ai] + b[v.bi] - v.c
			continue
		}

		tmp := a[v.ai] + b[v.bi] - v.c
		if min > tmp {
			min = tmp
		}
	}

	sort.Ints(a)
	sort.Ints(b)

	if min > a[0] + b[0] {
		min = a[0] + b[0]
	}

	fmt.Println(min)
}

type coupon struct {
	ai int
	bi int
	c  int
}
