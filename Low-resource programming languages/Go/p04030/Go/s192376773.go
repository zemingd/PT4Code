package main

import (
	"fmt"
)

func main() {
	var input string
	fmt.Scan(&input)
	inputRune := []rune(input)
	var outputRune []rune
	for ip := range inputRune {
		switch inputRune[ip] {
		case 'B':
			l := len(outputRune)
			if l > 0 {
				outputRune = outputRune[:l-1]
			}
		default:
			outputRune = append(outputRune, inputRune[ip])
		}
	}
	fmt.Println(string(outputRune))
}
