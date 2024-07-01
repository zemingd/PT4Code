package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

var scanner = bufio.NewScanner(os.Stdin)

func scanStringToken() (word string) {
	scanner.Scan()
	word = scanner.Text()
	return
}

func main() {
	t := scanStringToken()
	tRune := []rune(t)
	tLen := len(tRune)

	var answer string
	if tLen == 1 {
		answer = strings.Replace(answer, "?", "D", -1)
		goto skip
	}
	for i := 1; i < tLen; i++ {
		if tRune[i] == '?' {
			if tRune[i-1] == 'P' {
				tRune[i] = 'D'
			} else if tRune[i-1] == 'D' {
				tRune[i] = 'D'
			}
		}
	}
	answer = string(tRune)
skip:
	fmt.Println(answer)
}
