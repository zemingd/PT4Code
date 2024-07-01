package main

import (
	"fmt"
)

func main() {
	var word string
	fmt.Scan(&word)
	palindromeHugger(word)
}

func palindromeHugger(word string) int {
	var incidences int
	wordLenght := len(word) - 1

	for i, letter := range word {
		if byte(letter) != word[wordLenght-i] {
			incidences++
		}
	}

	return incidences / 2
}