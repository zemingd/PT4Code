package main

import "fmt"
import "strings"

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k)
	fmt.Scan(&s)

	fmt.Println(s[:k-1] + strings.ToLower(string(s[k-1])) + s[k:])
}
