package main

import (
	"fmt"
	"unicode"
)

func main() {
	var s string
	fmt.Scan(&s)

	exec(rune(s[0]))
}

func exec(r rune) {
	if unicode.IsUpper(r) {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
