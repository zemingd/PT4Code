package main

import (
	"fmt"
)

func main() {
	var s, t string
	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)

	ans := 0
	for i, c := range s {
		if c != rune(t[i]) {
			ans++
		}
	}
	fmt.Printf("%d", ans)
}
