package main

import (
	"fmt"
)

func main() {
	var word string
	fmt.Scan(&word)
	palindromeHugger(word)
}

func palindromeHugger(word string) {
	var incidences int
	wordLenght := len(word) / 2

	for i, letter := range word {
		if letter != rune(word[wordLenght-i]) {
			incidences++
		}
	}

	fmt.Println(incidences)
}
