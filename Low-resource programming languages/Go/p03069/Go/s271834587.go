package main

import (
	"fmt"
	"strings"
)

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	flip := false
	ans := 0
	for i := 0; i < n; i++ {
		if !flip {
			if s[i] == '#' {
				ans++
			} else {
				flip = true
			}
		} else {
			if s[i] == '.' {
				ans++
			}
		}
	}
	if v := strings.Count(s, "."); v < ans {
		ans = v
	}
	if v := strings.Count(s, "#"); v < ans {
		ans = v
	}
	fmt.Println(ans)
}
