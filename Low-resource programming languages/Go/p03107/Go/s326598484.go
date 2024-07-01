package main

import (
	"fmt"
)

var S string

func main() {
	fmt.Scan(&S)
	fmt.Println(min(count("0"), count("1")) * 2)
}

func count(s string) int {
	var ret int
	for i := 1; i <= len(S); i++ {
		if S[i-1:i] == s {
			ret++
		}
	}
	return ret
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
