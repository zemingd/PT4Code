package main

import (
	"fmt"
)

func main() {
	var s string

	fmt.Scanln(s)

	fmt.Println(logic(s))
}

func logic(s string) string {
	for i, c := range s {
		if len(s)-1 == i {
			continue
		}

		if c == rune(s[i+1]) {
			return "Bad"
		}
	}
	return "Good"
}
