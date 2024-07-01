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
	return a[i].b > a[j].b
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

	max := sords[0].a
	for i := 0; i < N; i++ {
		if sords[i].a > max {
			max = sords[i].a
		}
	}

	attack := 0
	damage := int64(0)
	for i := 0; i < N; i++ {
		if damage >= H || sords[i].b < max {
			break
		}

		damage += sords[i].b
		attack++
	}

	if damage < H {
		more := int((H - damage + (max - 1)) / max)
		attack += more
		damage += max * int64(more)
	}

	fmt.Println(attack)
}
