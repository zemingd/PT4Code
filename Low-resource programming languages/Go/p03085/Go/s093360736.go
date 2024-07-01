package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	if s == "A" {
		fmt.Println("T")
	} else if s == "C"{
		fmt.Println("G")
	} else if s == "G" {
		fmt.Println("C")
	} else if s == "T" {
		fmt.Println("A")
	}
	
}
