package main

import (
	"fmt"
)

func main() {
	var b string
	fmt.Scan(&b)

	if b == "A" {
		fmt.Print("T")
	} else if b == "T" {
		fmt.Print("A")
	} else if b == "C" {
		fmt.Print("G")
	} else {
		fmt.Print("C")
	}
}
