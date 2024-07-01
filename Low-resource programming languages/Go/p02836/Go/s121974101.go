package main

import (
	"fmt"
	"strings"
)

func main() {
	var word string
	fmt.Scan(&word)
	palindromeHugger(word)
}

func palindromeHugger(word string) int {
	word = strings.TrimSpace(word)
	reversedWord := wordReverser(word)
	wordSlice := []rune(word)
	incidence := 0

	for i, letter := range wordSlice {
		if letter != reversedWord[i] {
			incidence++
		}
	}

	fmt.Println(incidence / 2)
	return incidence / 2
}

func wordReverser(word string) []rune {
	var reversed strings.Builder
	letters := []rune(word)
	last := len(letters) - 1

	for i := 0; i < len(letters); i++ {
		reversed.WriteRune(letters[last-i])
	}

	return []rune(reversed.String())
}
