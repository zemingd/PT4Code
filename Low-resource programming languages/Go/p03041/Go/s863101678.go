package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)
	cs := []rune(s)
	ans := string(cs[0:k-1]) + strings.ToLower(string(cs[k-1:k])) + string(cs[k:n])
	fmt.Println(ans)
}
