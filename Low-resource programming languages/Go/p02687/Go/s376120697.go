package main

import "fmt"

func main() {
	var s string
	fmt.Scanf("%s", &s)
	var r string
	if s == "ABC" {
		r = "ARC"
	} else {
		r = "ABC"
	}
	fmt.Printf("%s\n", r)
}
