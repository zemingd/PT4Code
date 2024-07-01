package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)
	if u := strings.ToUpper(a); a == u {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
