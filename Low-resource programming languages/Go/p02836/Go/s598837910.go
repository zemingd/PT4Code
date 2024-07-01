package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	rs := []rune(s)
	h := 0

	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}

	for i, c := range s {
		//fmt.Printf("%c, %c\n", c, rs[i])
		if c != rs[i] {
			h += 1
		}
	}

	fmt.Printf("%d", h / 2)
}
