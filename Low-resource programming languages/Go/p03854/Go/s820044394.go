package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	fmt.Println(abc049c(s))
}

func abc049c(s string) string {
	for 0 != len(s) {
		if len(s) >= 5 {
			switch s[len(s)-5:] {
			case "dream", "erase":
				s = s[:len(s)-5]
				continue
			}
		}
		if len(s) >= 6 {
			switch s[len(s)-6:] {
			case "eraser":
				s = s[:len(s)-6]
				continue
			}
		}
		if len(s) >= 7 {
			switch s[len(s)-7:] {
			case "dreamer":
				s = s[:len(s)-7]
				continue
			}
		}
		return "NO"
	}
	return "YES"
}
