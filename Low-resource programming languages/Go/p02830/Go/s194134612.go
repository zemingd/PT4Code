package main

import (
	"fmt"
)

func main() {
	var n int
	var s, t string
	fmt.Scanf("%d", &n)
	fmt.Scanf("%s %s", &s, &t)
	sRune := []rune(s)
	tRune := []rune(t)
	result := ""
	for i := 0; i < n; i++ {
		result = result + string(sRune[i]) + string(tRune[i])
	}

	fmt.Printf("%s\n", result)
}
