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

	first := string(s[0])
	s2 := s + first

	tokens := DupToken(s2)

	x := 0
	for _, token := range(tokens) {
		x += len(token) / 2
	}

	result := x * k
	if len(tokens[len(tokens)-1])% 2 == 0 {
		result --
	}

	fmt.Printf("%d", result)
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

