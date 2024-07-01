package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	count := 0

	if strings.Count(s, "#") > (n / 2) {
		for i := 0; i < n; i++ {
			if s[i] == '.' {
				count++
			}
		}
	} else {
		for i := 0; i < n-1; i++ {
			if s[i] == '#' {
				count++
			}
		}
	}

	fmt.Println(count)
}
