package main

import (
	"fmt"
)

func main() {
	var s, t string
	var sRunes, tRunes []rune
	fmt.Scan(&s, &t)

	sRunes = []rune(s)
	tRunes = []rune(t)

	for i := 0; i < len(sRunes); i++ {
		if isEqual(sRunes, tRunes) {
			fmt.Println("Yes")
			return
		}

		sRunes = rotRunes(sRunes)
	}

	fmt.Println("No")
}

func rotRunes(input []rune) []rune {
	var result []rune

	result = append(result, input[len(input)-1])
	for i := 0; i < len(input)-1; i++ {
		result = append(result, input[i])
	}

	return result
}

func isEqual(s, t []rune) bool {
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			return false
		}
	}

	return true
}
