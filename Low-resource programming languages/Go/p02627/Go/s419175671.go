package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)
	l := strings.ToLower(a)
	if a != l {
		fmt.Print("A")
	} else {
		fmt.Print("a")
	}
}
