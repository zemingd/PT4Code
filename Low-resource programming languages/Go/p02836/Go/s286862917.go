package main

import (
	"fmt"
)

func main() {
	var raw string
	fmt.Scan(&raw)

	r := 0
	s := []rune(raw)
	l := len(s)
	for i := 0; i < l/2; i++ {
		if s[i] != s[l - i -1] {
			r++
		}
	}

	fmt.Println(r)
}