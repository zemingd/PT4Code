package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)

	if a == strings.ToUpper(a) {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
