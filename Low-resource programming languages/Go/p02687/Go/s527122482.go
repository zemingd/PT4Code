package main

import (
	"fmt"
)

func main() {
	var last string
	fmt.Scanf("%s", &last)
	if last == "ABC" {
		fmt.Printf("ARC\n")
	} else if last == "ARC" {
		fmt.Printf("ABC\n")
	}
}
