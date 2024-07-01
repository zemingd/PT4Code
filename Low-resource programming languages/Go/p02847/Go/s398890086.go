package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	if s == "SUN" {
		fmt.Println(7)
	} else if s == "MON" {
		fmt.Println(6)
	} else if s == "TUE" {
		fmt.Println(5)
	} else if s == "WED" {
		fmt.Println(4)
	} else if s == "THU" {
		fmt.Println(3)
	} else if s == "FRI" {
		fmt.Println(2)
	} else if s == "SAT" {
		fmt.Println(1)
	}
}
