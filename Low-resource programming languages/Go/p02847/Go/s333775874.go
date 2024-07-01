package main

import "fmt"

func main() {
	var a string

	fmt.Scan(&a)
	if a == "SUN" {
		fmt.Print("7")
	} else if a == "MON" {
		fmt.Print("6")
	} else if a == "TUE" {
		fmt.Print("5")
	} else if a == "WED" {
		fmt.Print("4")
	} else if a == "THU" {
		fmt.Print("3")
	} else if a == "FRI" {
		fmt.Print("2")
	} else if a == "SAT" {
		fmt.Print("1")
	}
}
