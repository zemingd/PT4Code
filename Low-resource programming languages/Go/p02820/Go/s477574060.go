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

	wins := []string{}
	for count, hand := range t {
		handString := string(hand)
		if count < k || k <= count && wins[count - k] != handString {
			wins = append(wins, handString)
			switch hand {
			case 'r':
				score += p
			case 's':
				score += r
			case 'p':
				score += s
			}
		} else {
			wins = append(wins, "l")
		}
	}

	fmt.Print(score)
}
