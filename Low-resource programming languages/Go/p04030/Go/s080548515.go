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
			outputRune = outputRune[:len(outputRune)-1]
		default:
			outputRune = append(outputRune, inputRune[ip])
		}
	}
	fmt.Println(string(outputRune))
}
