package main

import (
	"fmt"
	"unicode"
)

func main() {
	var a string
	fmt.Scan(&a)
	if unicode.IsUpper(rune(a[0])) {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}