package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)

	if s == "ABC" {
		fmt.Println("ARC")
	} else if s == "ARC" {
		fmt.Println("ABC")
	}
}
