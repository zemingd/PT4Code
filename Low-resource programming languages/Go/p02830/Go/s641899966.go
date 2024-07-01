package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s, t string
	fmt.Scan(&n, &s, &t)
	var newChars []string
	for i := 0; i < n; i++ {
		newChars = append(newChars, string(s[i]))
		newChars = append(newChars, string(t[i]))
	}
	fmt.Println(strings.Join(newChars, ""))
}