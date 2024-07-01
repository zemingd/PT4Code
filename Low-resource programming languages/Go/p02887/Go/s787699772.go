package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scanln(&n)
	fmt.Scanln((&s))

	fmt.Println(logic(s))
}

func logic(s string) int {
	var char rune
	count := 0

	for _, c := range s {
		if c != char {
			count++
			char = c
		}
	}
	return count
}