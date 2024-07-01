package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)

	for i := 0; i < n; i++ {
		if i+1 == k {
			fmt.Printf(strings.ToLower(string(s[i])))
		} else {
			fmt.Printf(string(s[i]))
		}
	}
}