package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)
	k--
	b := s[0:k] + strings.ToLower(string(s[k])) + s[k+1:]

	fmt.Println(b)
}
