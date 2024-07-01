package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	if s[0] != 'A' {
		fmt.Println("WA")
		return
	}

	if strings.Count(s[2:len(s)-1], "C") != 1 {
		fmt.Println("WA")
		return
	}

	s = strings.Replace(s, "A", "a", 1)
	s = strings.Replace(s, "C", "c", 1)

	if s != strings.ToLower(s) {
		fmt.Println("WA")
		return
	}

	fmt.Println("AC")
}
