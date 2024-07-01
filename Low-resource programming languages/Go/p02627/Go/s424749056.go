package main

import (
	"fmt"
	"unicode"
)

func main() {
	var a string
	fmt.Scan(&a)

	if IsFirstUpper(a) {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}

}

func IsFirstUpper(v string) bool {
	if v == "" {
		return false
	}
	r := rune(v[0])
	return unicode.IsUpper(r)
}
