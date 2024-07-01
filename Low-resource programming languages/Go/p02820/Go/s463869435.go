package main

import (
	"fmt"
)

func main() {
	var (
		n, k, r, s, p int
		t             string
	)
	fmt.Scanf("%d %d", &n, &k)
	fmt.Scanf("%d %d %d", &r, &s, &p)
	fmt.Scanf("%s", &t)
	score := map[string]int{"r": r, "s": s, "p": p}

	ans := 0
	history := make([]string, 0)
	for i, v := range t {
		d := string(v)
		w := winHand(d)
		if i-k >= 0 && history[i-k] == w {
			history = append(history, d)
		} else {
			ans += score[w]
			history = append(history, w)
		}
	}
	fmt.Println(ans)
}

func winHand(s string) (hand string) {
	switch s {
	case "r":
		hand = "p"
	case "s":
		hand = "r"
	case "p":
		hand = "s"
	default:
		hand = ""
	}
	return hand
}
