package main

import (
	"fmt"
	"sort"
)

type Sord struct {
	a int64
	b int64
}

type Sords []Sord

func (a Sords) Len() int {
	return len(a)
}

func (a Sords) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func (a Sords) Less(i, j int) bool {
	return a[i].a > a[j].a
}

func main() {
	var N int
	var H int64

	fmt.Scanf("%d %d", &N, &H)

	sords := make(Sords, N)

	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &sords[i].a, &sords[i].b)
	}

	sort.Sort(sords)

	atack := int(H/sords[0].a) + 1
	damage := int64(atack) * sords[0].a

	for i := 0; i < N; i++ {
		if sords[i].b > sords[0].a {
			damage -= sords[0].a
			damage += sords[i].b

			sub := int((damage - H) / sords[0].a)
			atack -= sub
			damage -= sords[0].a * int64(sub)
		}
	}

	if atack <= 0 {
		fmt.Println(1)
	} else {
		fmt.Println(atack)
	}
}
