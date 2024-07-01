package main

import "fmt"

func main() {

	var a string
	fmt.Scan(&a)

	if a == "SUN" {
		fmt.Println(7)
	} else if a == "MON" {
		fmt.Println(6)
	} else if a == "TUE" {
		fmt.Println(5)
	} else if a == "WED" {
		fmt.Println(4)
	} else if a == "THU" {
		fmt.Println(3)
	} else if a == "FRI" {
		fmt.Println(2)
	} else if a == "SAT" {
		fmt.Println(1)
	}

}
