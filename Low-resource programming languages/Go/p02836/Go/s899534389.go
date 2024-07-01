package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)
	r := reverse(s)

	var wrong int
	for i := 0; i < len(s); i++ {
		if s[i] != r[i] {
			wrong++
		}

	}

	fmt.Println(wrong / 2)
}

func reverse(s string) string {
	rs := []rune(s)
	for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
		rs[i], rs[j] = rs[j], rs[i]
	}
	return string(rs)
}