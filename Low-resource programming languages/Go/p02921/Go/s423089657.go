package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	var a, b string
	fmt.Scan(&a)
	fmt.Scan(&b)

	S := spritString(a)
	T := spritString(b)

	res := 0
	for i, s := range S {
		if s == T[i] {
			res++
		}
	}
	fmt.Println(res)
}

func spritString(input string) (res []string) {
	for i := 0; i < utf8.RuneCountInString(input); i++ {
		res = append(res, input[i:i+1])
	}
	return
}
