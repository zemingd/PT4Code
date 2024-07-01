package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	var k int
	fmt.Scanf("%d", &k)

	if k == 1 {
		tokens := DupToken(s)
		x := 0
		for _, token := range(tokens) {
			x += len(token) / 2
		}
		fmt.Printf("%d", x)
		return
	}

	if k == 2 {
		tokens := DupToken(s + s)
		x := 0
		for _, token := range(tokens) {
			x += len(token) / 2
		}
		fmt.Printf("%d", x)
		return
	}

	if len(DupToken(s)) == 1 {
		fmt.Printf("%d", len(s) * k / 2)
		return
	}

	x := 0
	for _, token := range(DupToken(s)) {
		x += len(token) / 2
	}

	x2 := 0
	for _, token := range(DupToken(s + s)) {
		x2 += len(token) / 2
	}

	x3 := 0
	for _, token := range(DupToken(s + s + s)) {
		x3 += len(token) / 2
	}

	m := x3 - x2

	fmt.Printf("%d", m * (k - 1) + x)
}

func DupToken(x string) []string {
	tokens := []string{}

	i := 0
	for ; i < len(x); {
		j := i+1
		for ; j < len(x); {
			if x[i] != x[j] {
				break
			}
			j ++
		}

		tokens = append(tokens, x[i:j])
		i = j
	}

	return tokens
}

