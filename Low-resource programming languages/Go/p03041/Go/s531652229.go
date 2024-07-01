package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)
	fmt.Printf("%s%s%s", s[0:k-1], strings.ToLower(s[k-1:k]), s[k:n])
}
