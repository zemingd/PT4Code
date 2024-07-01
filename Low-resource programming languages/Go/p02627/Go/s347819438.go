package main

import (
	"fmt"
	"regexp"
)

func main() {
	var s string
	fmt.Scan(&s)
	r := regexp.MustCompile(`[a-z]`)
	if r.MatchString(s) {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}
}
