package main

import (
	"fmt"
)

func main() {
	var n, k, r, s, p int
	var t string
	fmt.Scanf("%d %d", &n, &k)
	fmt.Scanf("%d %d %d", &r, &s, &p)
	fmt.Scanf("%s", &t)

	hs := t[:k]
	for i := k; i < n; i++ {
		if t[i] == hs[i-k] {
			hs += "x"
		} else {
			hs += string(t[i])
		}
	}

	score := 0
	for _, h := range hs {
		switch h {
		case 'r':
			score += p
		case 's':
			score += r
		case 'p':
			score += s
		}

	}

	fmt.Printf("%d\n", score)
}
