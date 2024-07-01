package main

import (
	"fmt"
	"sort"
)

type Sword struct {
	a int64
	b int64
}

// type Swords []Sword

// func (a Swords) Len() int {
// 	return len(a)
// }

// func (a Swords) Swap(i, j int) {
// 	a[i], a[j] = a[j], a[i]
// }

// func (a Swords) Less(i, j int) bool {
// 	return a[i].b > a[j].b
// }

func main() {
	var N int
	var H int64

	fmt.Scanf("%d %d", &N, &H)

	// swords := make(Swords, N)
	swords := make([]Sword, N)

	for i := 0; i < N; i++ {
		fmt.Scanf("%d %d", &swords[i].a, &swords[i].b)
	}

	sort.Slice(swords, func(i, j int) bool {
		return swords[i].b > swords[j].b
	})

	max := swords[0].a
	for i := 0; i < N; i++ {
		if swords[i].a > max {
			max = swords[i].a
		}
	}

	attack := 0
	damage := int64(0)
	for i := 0; i < N; i++ {
		if damage >= H || swords[i].b < max {
			break
		}

		damage += swords[i].b
		attack++
	}

	if damage < H {
		more := int((H - damage + (max - 1)) / max)
		attack += more
		damage += max * int64(more)
	}

	fmt.Println(attack)
}
