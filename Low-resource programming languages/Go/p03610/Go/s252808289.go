package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	// remove odd strings
	answer := make([]string, len(s)/2+1)
	for i := 1; i < len(s); i = i + 2 {
		answer = append(answer, string(s[i]))
	}
	fmt.Println(strings.Join(answer, ""))
}
