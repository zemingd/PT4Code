package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	var s string
	fmt.Scan(&s)

	fmt.Println(s[:k-1] + strings.ToLower(string(s[k-1])) + s[k:])
}
