package main

import (
	"fmt"
	"strings"
	)

func main() {
	r := "A"
	var a string
	fmt.Scan(&a)
	b := strings.ToLower(a)
	if a == b {
		r = "a"
	}
	fmt.Println(r)
}