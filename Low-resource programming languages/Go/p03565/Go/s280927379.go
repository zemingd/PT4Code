package main

import (
	"fmt"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	if len(t) > len(s) {
		fmt.Println("UNRESTORABLE")
		return
	}

	for i := range s[:len(s)-len(t)+1] {
		found := true
		for j := range t {
			if !(s[i+j] == t[j] || s[i+j] == '?') {
				found = false
				break
			}
		}
		if found {
			fmt.Println(strings.Replace(s[:i]+t+s[i+len(t):], "?", "a", -1))
			return
		}
	}
	fmt.Println("UNRESTORABLE")
}
