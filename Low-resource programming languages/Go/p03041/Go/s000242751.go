package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)

	var result string
	for i := 1; i <= n; i++ {
		if i == k {
			str := s[i-1:i]
			result += strings.ToLower(str)
		} else {
			result += s[i-1:i]
		}
	}

	fmt.Println(result)
}
