package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	if strings.ToUpper(s) == s {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
