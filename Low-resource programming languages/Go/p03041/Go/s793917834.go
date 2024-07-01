package main

import (
	"fmt"
	"unicode"
)

func main() {

	var n, k int
	var s []rune
	var r rune

	fmt.Scanf("%d %d\n", &n, &k)

	for i := 0; i < n; i++ {
		fmt.Scanf("%c", &r)
		if i+1 == k {
			r = unicode.ToLower(r)
		}
		s = append(s, r)
	}

	for i := range s {
		fmt.Printf("%c", s[i])
	}
	fmt.Println("")
}
