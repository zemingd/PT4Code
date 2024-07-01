package main

import (
	"fmt"
	"strings"
	"unicode/utf8"
)

func main() {
	var n, k, r, s, p, score int
	var t string
	fmt.Scanf("%d %d", &n, &k)
	fmt.Scanf("%d %d %d", &r, &s, &p)
	fmt.Scanf("%s", &t)

	prev := ""
	for count, hand := range t {
		if k <= count && checkWin([]rune(prev)[count - k], hand) {
			hands := "rps"
			hands = strings.ReplaceAll(hands, fmt.Sprintf("%c", []rune(prev)[count - k]), "")
			if (count + k) <= utf8.RuneCountInString(t) {
				futureHand := []rune(t)[count + k]
				win := getWin(futureHand, fmt.Sprintf("%c", []rune(hands)[0]))
				if win == fmt.Sprintf("%c", []rune(prev)[count - k]) {
					hands = strings.ReplaceAll(hands, fmt.Sprintf("%c", []rune(hands)[0]), "")
				} else {
					hands = strings.ReplaceAll(hands, win, "")
				}
				prev += hands
			} else {
				prev += fmt.Sprintf("%c", []rune(hands)[0])
			}
		} else {
			tmp := ""
			switch hand {
			case 'r':
				score += p
				tmp = "p"
			case 's':
				score += r
				tmp = "r"
			case 'p':
				score += s
				tmp = "s"
			}
			prev += tmp
		}
	}

	fmt.Print(score)
}

func checkWin(man rune, machine rune) bool{
	switch machine {
	case 'r':
		if man == 'p' {
			return true
		}
		return false
	case 's':
		if man == 'r' {
			return true
		}
		return false
	case 'p':
		if man == 's' {
			return true
		}
		return false
	default:
		return false
	}
}

func getWin(futureHand rune, def string) string{
	switch futureHand {
	case 'r':
			return "p"
	case 's':
			return "r"
	case 'p':
			return "s"
	default:
		return def
	}
}
