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
	return b[i].X < b[j].X
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

	// kaburi := make([]bool, n)
	// for i := 0; i < n - 1; i++ {
	// 	if x[i] + l[i] <= x[i+1] - l[i+1] {
	// 		kaburi[i], kaburi[i+1] = true, true
	// 	}
	// }

	bot := n
	for i := 0; i < n - 1; i++ {
		right := bots[i].X + bots[i].L

		if right >= bots[i+1].X - bots[i+1].L {
			// fmt.Println("right", right, x[i+1] - l[i+1])

			if bots[i].L < bots[i+1].L {
				bots[i].X = -1
				bots[i].L = 0
			} else {
				bots[i+1].X = -1
				bots[i+1].L = 0
			}
			bot--
		}
	}
	fmt.Println(bot)
}
