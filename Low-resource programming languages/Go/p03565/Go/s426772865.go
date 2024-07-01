package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	for i := range s[:len(s)-len(t)+1] {
		found := true
		for j := range t {
			if !(s[i+j] == t[j] || s[i+j] == '?') {
				found = false
				break
			}
		}
		if found {
			fmt.Println(strings.ReplaceAll(s[:i]+t+s[i+len(t):], "?", "a"))
			return
		}
	}
	fmt.Println("UNRESTORABLE")
}
