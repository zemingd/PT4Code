package main

import (
	"fmt"
	"unicode"
)

func main() {
	var s string
	fmt.Scan(&s)
	if isUpper(s) {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}

func isUpper(v string) bool {
	r := rune(v[0])
	return unicode.IsUpper(r)
}