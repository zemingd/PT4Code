package main

import (
	"fmt"
	"strings"
)

func saiki(s string, t string) bool {
	var hit bool
	words := []string{"dream", "dreamer", "erase", "eraser"}

	if s == t {
		return true
	}

	if len(s) < len(t) {
		return false
	}

	for _, v := range words {
		if strings.HasPrefix(s, t + v) {
			if saiki(s, t + v) {
				return true
			}
		}
	}

	return false
}

func main() {
	var s, t string
	
	fmt.Scan(&s)

	if saiki(s, t) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}