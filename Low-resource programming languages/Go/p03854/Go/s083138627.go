package main

import (
	"fmt"
	"strings"
)

func check(text string) bool {
	var (
		a bool = false
		b bool = false
		c bool = false
		d bool = false
	)
	if len(text) == 0 {
		return true
	}
	if !strings.HasPrefix(text, "dream") && !strings.HasPrefix(text, "dreamer") && !strings.HasPrefix(text, "erase") && !strings.HasPrefix(text, "eraser") {
		return false
	}

	if strings.HasPrefix(text, "dream") {
		replacedText := strings.Replace(text, "dream", "", 1)
		a = check(replacedText)
	}
	if strings.HasPrefix(text, "dreamer") {
		replacedText := strings.Replace(text, "dreamer", "", 1)
		b = check(replacedText)
	}
	if strings.HasPrefix(text, "erase") {
		replacedText := strings.Replace(text, "erase", "", 1)
		c = check(replacedText)
	}
	if strings.HasPrefix(text, "eraser") {
		replacedText := strings.Replace(text, "eraser", "", 1)
		d = check(replacedText)
	}

	return a || b || c || d
}

func main() {
	var s string
	fmt.Scan(&s)

	if check(s) {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
