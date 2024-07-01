package main

import (
	"fmt"
	"unicode"
)

func main() {
	var N, K int
	var S string
	fmt.Scan(&N, &K)
	fmt.Scan(&S)
	fmt.Printf("%v%v%v\n", S[:K-1], string(unicode.ToLower(rune(S[K-1]))), S[K:])
}
