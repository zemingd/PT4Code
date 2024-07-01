package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k)
	fmt.Scan(&s)
	fmt.Println(s[:k-1] + strings.ToLower(s[k-1:k]) + s[k:])
}
