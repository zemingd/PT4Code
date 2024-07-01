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

	score := []int{}

	for i := 0; i < k; i++ {
		switch t[i] {
		case 'r':
			score = append(score, p)
		case 's':
			score = append(score, r)
		case 'p':
			score = append(score, s)
		}
	}

	for i := k; i < n; i++ {
		var x int
		switch t[i] {
		case 'r':
			x = p
		case 's':
			x = r
		case 'p':
			x = s
		}
		if x == score[i-k] {
			x = 0
		}
		score = append(score, x)
	}

	sum := 0
	for _, x := range score {
		sum += x
	}

	fmt.Printf("%d\n", sum)
}
