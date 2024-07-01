package main

import (
	"fmt"
	"regexp"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	if isUpper {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}

func isUpper(s string) bool {
	if regexp.MustCompile("[A-Z]").Match([]byte(s)) {
		return true
	}

	return false
}
