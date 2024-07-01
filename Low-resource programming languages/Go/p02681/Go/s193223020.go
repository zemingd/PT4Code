package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	if utf8.RuneCountInString(t) == utf8.RuneCountInString(s)+1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}