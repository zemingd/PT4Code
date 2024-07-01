package main

import (
	"fmt"
)

const (
	rock = iota
	scissors
	paper
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	var r, s, p int
	fmt.Scanf("%d %d %d", &r, &s, &p)
	var t string
	fmt.Scan(&t)
	result := 0
	ans := make([]int, n)
	for i, opp := range t {
		oppChoice := convert(string(opp))
		choice := win(oppChoice)
		point := point(choice, r, s, p)
		if i < k || choice != ans[i-k] {
			result += point
			ans[i] = choice
		} else if i+k < n {
			future := convert(string(t[i+k]))
			if win(future) != oppChoice {
				ans[i] = oppChoice
			} else {
				ans[i] = 3 - oppChoice - choice
			}
		}
	}
	fmt.Println(result)
}

func win(opp int) int {
	switch opp {
	case rock:
		return paper
	case scissors:
		return rock
	case paper:
		return scissors
	default:
		return 0
	}
}

func point(choice int, r, s, p int) int {
	switch choice {
	case rock:
		return r
	case scissors:
		return s
	case paper:
		return p
	default:
		return 0
	}
}

func convert(s string) int {
	switch s {
	case "r":
		return rock
	case "s":
		return scissors
	case "p":
		return paper
	default:
		return 0
	}
}
