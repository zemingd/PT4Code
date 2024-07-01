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

	s3 := s + s + s

	x := 0
	for _, token := range(DupToken(s)) {
		x += len(token) / 2
	}

	x3 := 0
	for _, token := range(DupToken(s3)) {
		x3 += len(token) / 2
	}

	m := x3 - x * 2

	fmt.Printf("%d", m * (k - 2) + x * 2)
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

