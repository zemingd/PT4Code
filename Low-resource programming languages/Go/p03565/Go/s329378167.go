package main

import (
	"fmt"
	"os"
	"strings"
)

func main() {
	var s1, t string
	fmt.Scan(&s1, &t)

	for i := 0; i < len(s1)-len(t)+1; i++ {
		if match(s1[i:i+len(t)], t) {
			fmt.Println(
				strings.Replace(s1[:i]+t+s1[i+len(t):], "?", "a", -1),
			)
			os.Exit(0)
		}
	}
	fmt.Println("UNRESTORABLE")
}

func match(s1, t string) bool {
	for i := 0; i < len(s1); i++ {
		if s1[i] != t[i] && t[i] != '?' {
			return false
		}
	}
	return true
}
