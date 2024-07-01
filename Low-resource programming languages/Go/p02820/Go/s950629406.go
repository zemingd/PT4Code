package main

import (
	"fmt"
)

func main() {
	var n, k, r, s, p, score int
	var t string
	fmt.Scanf("%d %d", &n, &k)
	fmt.Scanf("%d %d %d", &r, &s, &p)
	fmt.Scanf("%s", &t)

	wins := ""
	for count, hand := range t {
		if count < k || k <= count && []rune(wins)[count - k] != hand {
			wins += string(hand)
		} else {
			wins += "l"
		}
	}

	for _, hand := range wins {
		switch hand {
		case 'r':
			score += p
		case 's':
			score += r
		case 'p':
			score += s
		}
	}
	fmt.Print(score)
}
