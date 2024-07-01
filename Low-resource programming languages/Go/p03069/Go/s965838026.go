package main

import (
	"fmt"
	"strings"
)

func min(n1, n2 int) int {
	if n1 < n2 {
		return n1
	} else {
		return n2
	}
}

func main() {
	var (
		n int
		s string
	)
	fmt.Scan(&n, &s)

	count1 := 0
	for i := 0; i < n-1; i++ {
		if s[i] == '#' && s[i+1] == '.' {
			count1++
		}
	}
	count2 := 0
	for i := 0; i < n-1; i++ {
		if s[i] == '.' && s[i+1] == '#' {
			count2 = strings.Count(s[i+1:n-1], "#")
		}
	}
	fmt.Println(min(count1, count2))
}
