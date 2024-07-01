package main

import (
	"fmt"
	"regexp"
)

func main() {
	a()
}

func a() {
	var s string
	fmt.Scanf("%s", &s)
	r := regexp.MustCompile(`[A-Z]`)

	if r.MatchString(s) {
		fmt.Println("A")

	} else {
		fmt.Println("a")
	}
}
