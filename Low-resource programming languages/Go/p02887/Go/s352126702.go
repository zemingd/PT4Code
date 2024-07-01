package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	var a int
	var b string
	fmt.Scan(&a)
	fmt.Scan(&b)

	s := spritString(b)
	// res := make([]string, 0)
	// temp := ""
	temp := ""
	res := 0
	for i := 0; i < a; i++ {
		if temp == s[i] {
			continue
		}
		temp = s[i]
		// res = append(res, s[i])
		res++
	}

	fmt.Println(res)
}

func spritString(input string) (res []string) {
	for i := 0; i < utf8.RuneCountInString(input); i++ {
		res = append(res, input[i:i+1])
	}
	return
}
