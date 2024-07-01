package main

import (
	"fmt"
	"strings"
)

func main() {
	var a string
	fmt.Scan(&a)
	if strings.ToUpper(a) == a {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}