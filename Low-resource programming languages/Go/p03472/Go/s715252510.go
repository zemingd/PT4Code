package main

import (
	"fmt"
	"sort"
)

type longs []int64

func (a longs) Len() int {
	return len(a)
}

func (a longs) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func (a longs) Less(i, j int) bool {
	return a[i] > a[j]
}

func main() {
	var N int
	var H int64

	fmt.Scanf("%d %d", &N, &H)

	a := make(longs, N)
	b := make(longs, N)

	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &a[i], &b[i])
	}

	sort.Sort(a)
	sort.Sort(b)

	atack := int(H/a[0]) + 1
	damage := int64(atack) * a[0]

	for i := 0; i < N; i++ {
		if b[i] > a[0] {
			damage -= a[0]
			damage += b[i]

			sub := int((damage - H) / a[0])
			atack -= sub
			damage -= a[0] * int64(sub)
		}
	}

	if atack <= 0 {
		fmt.Println(1)
	} else {
		fmt.Println(atack)
	}
}
