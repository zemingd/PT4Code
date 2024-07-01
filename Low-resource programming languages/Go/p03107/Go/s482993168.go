package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	var zcnt, ocnt int
	for _, c := range s {
		if c == '0' {
			zcnt++
		} else {
			ocnt++
		}
	}

	fmt.Println(2 * min(zcnt, ocnt))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
