package main

import (
	"fmt"
	"strings"
	)

func main() {
	var a string
	fmt.Scan(&a)
	b := strings.ToLower(a)
	if a == b {
		b = strings.ToUpper(b)
	}
	fmt.Println(b)
}