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
	wordLenght := len(word)

	for i, letter := range word {
		if letter != rune(word[wordLenght-i]) {
			incidences++
		}

		if i == (wordLenght/2)+1 {
			return
		}
	}

	fmt.Println(incidences)
}
