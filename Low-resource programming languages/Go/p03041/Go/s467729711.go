package main

import (
	"fmt"
	"strings"
)

func main() {
	var n, k int
	var s string
	fmt.Scan(&n, &k, &s)
	for i := range s {
		if i == k-1 {
			fmt.Print(strings.ToLower(string(s[i])))
			continue
		}
		fmt.Print(string(s[i]))
	}
	fmt.Println()
}