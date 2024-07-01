package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)

	if a == strings.ToLower(a) {
		fmt.Println("a")
	} else {
		fmt.Println("A")
	}
}
