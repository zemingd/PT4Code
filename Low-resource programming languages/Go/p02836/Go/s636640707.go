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

	for _, letter := range word {
		if byte(letter) != word[wordLenght] {
			incidences++
		}
		wordLenght--
	}

	return incidences / 2
}
