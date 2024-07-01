package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scanf("%s", &s)

	if s == "SUN" {
		fmt.Printf("7")
	}
	if s == "MON" {
		fmt.Printf("6")
	}
	if s == "TUE" {
		fmt.Printf("5")
	}
	if s == "WED" {
		fmt.Printf("4")
	}
	if s == "THU" {
		fmt.Printf("3")
	}
	if s == "FRI" {
		fmt.Printf("2")
	}
	if s == "SAT" {
		fmt.Printf("1")
	}
	return
}
