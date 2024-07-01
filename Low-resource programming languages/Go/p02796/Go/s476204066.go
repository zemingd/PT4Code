package main

import (
	"fmt"
	"sort"
)

type Bot struct {
	X, L int
}

type Bots []Bot

func (b Bots) Len() int {
	return len(b)
}

func (b Bots) Less(i, j int) bool {
	// return b[i].X < b[j].X
	return b[i].X+b[i].L < b[j].X+b[j].L
}

func (b Bots) Swap(i, j int) {
	b[i], b[j] = b[j], b[i]
}

func main() {
	var n int
	fmt.Scan(&n)

	bots := make([]Bot, n)
	for i := 0; i < n; i++ {
		var x, l int
		fmt.Scan(&x, &l)
		bots[i] = Bot{X: x, L: l}
	}
	sort.Sort(Bots(bots))

	bot := 0
	current := int(-1e9 - 10)
	for i := 0; i < n; i++ {
		b := bots[i]
		if current <= b.X-b.L {
			current = b.X + b.L
			bot++
		}
	}
	fmt.Println(bot)
}
