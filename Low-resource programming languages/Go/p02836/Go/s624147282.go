package palindrome

import (
	"strings"
)

func palindromeHugger(word string) int {
	reversedWord := wordReverser(word)
	if v := strings.EqualFold(word, reversedWord); v == true {
		return 0
	}

	var incidence int

	for _, letter := range word {
		for _, reversedLetter := range reversedWord {
			if letter != reversedLetter {
				incidence++
			}
		}
	}

	return incidence
}

func wordReverser(word string) string {
	var reversed strings.Builder
	letters := []rune(word)
	last := len(letters) - 1

	for i := 0; i < len(letters); i++ {
		reversed.WriteRune(letters[last-i])
	}

	return reversed.String()
}
