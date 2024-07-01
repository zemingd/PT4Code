package main

import (
	"fmt"
	"unicode"
)

func main() {
	var s string
	fmt.Scan(&s)
	l := len(s)
	ans := "AC"
	if s[0] != 'A' {
		ans = "WA"
	}
	cnt := 0
	for i := 1; i < l; i++ {
		if unicode.IsUpper(rune(s[i])) {
			if i == 1 || i == l-1 || s[i] != 'C' {
				ans = "WA"
			}
			cnt++
		}
	}
	if cnt != 1 {
		ans = "WA"
	}
	fmt.Println(ans)
}
