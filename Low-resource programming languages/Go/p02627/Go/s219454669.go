package main

import (
	"fmt"
	"strings"
	"unicode"
)

func main() {
	var s string
	fmt.Scan(&s)
	if isUpper(s) {
		fmt.Println(strings.ToLower(s))
	} else {
		fmt.Println(strings.ToUpper(s))
	}
}

func isUpper(v string) bool {
	r := rune(v[0])
	return unicode.IsUpper(r)
}
