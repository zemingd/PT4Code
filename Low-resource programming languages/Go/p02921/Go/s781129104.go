package main

import (
	"fmt"
)

func StringToRuneSlice(s string) []rune {
	var r []rune
	for _, runeValue := range s {
		r = append(r, runeValue)
	}
	return r
}

func main() {
	var s string
	fmt.Scan(&s)
	var t string
	fmt.Scan(&t)

	sr := StringToRuneSlice(s)
	st := StringToRuneSlice(t)
	var count int
	for i := 0; i < len(sr); i++ {
		if sr[i] == st[i] {
			count++
		}
	}
	fmt.Println(count)
}
